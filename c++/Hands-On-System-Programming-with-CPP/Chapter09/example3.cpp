//
// Copyright (C) 2018 Rian Quinn <rianquinn@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#include <list>
#include <deque>
#include <vector>
#include <iostream>

#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>

// -----------------------------------------------------------------------------
// Allocator Definition
// -----------------------------------------------------------------------------

template<typename T>
class myallocator
{
public:

    using value_type = T;
    using pointer = T *;
    using size_type = std::size_t;
    using is_always_equal = std::true_type;

public:

    myallocator()
    {
        std::cout << this << " constructor, sizeof(T): "
                  << sizeof(T) << '\n';
    }

    template <typename U>
    myallocator(const myallocator<U> &other) noexcept
    { (void) other; }

    myallocator(myallocator &&other) noexcept
    {
        (void) other;
        std::cout << this << " move constructor, sizeof(T): "
                    << sizeof(T) << '\n';
    }

    myallocator &operator=(myallocator &&other) noexcept
    {
        (void) other;
        std::cout << this << " move assignment, sizeof(T): "
                    << sizeof(T) << '\n';
        return *this;
    }

    myallocator(const myallocator &other) noexcept
    {
        (void) other;
        std::cout << this << " copy constructor, sizeof(T): "
                    << sizeof(T) << '\n';
    }

    myallocator &operator=(const myallocator &other) noexcept
    {
        (void) other;
        std::cout << this << " copy assignment, sizeof(T): "
                    << sizeof(T) << '\n';
        return *this;
    }

    pointer allocate(size_type n)
    {
        if (auto ptr = static_cast<pointer>(malloc(sizeof(T) * n))) {
            std::cout << this << "  A [" << n << "]: " << ptr << '\n';
            return ptr;
        }

        throw std::bad_alloc();
    }

    void deallocate(pointer p, size_type n)
    {
        (void) n;

        std::cout << this << "  D [" << n << "]: " << p << '\n';
        free(p);
    }
};

template <typename T1, typename T2>
bool operator==(const myallocator<T1> &, const myallocator<T2> &)
{ return true; }

template <typename T1, typename T2>
bool operator!=(const myallocator<T1> &, const myallocator<T2> &)
{ return false; }

// -----------------------------------------------------------------------------
// Tests
// -----------------------------------------------------------------------------

TEST_CASE("copy")
{
    std::list<int, myallocator<int>> mylist1;
    std::list<int, myallocator<int>> mylist2;

    mylist1.emplace_back(42);
    mylist1.emplace_back(42);

    std::cout << "----------------------------------------\n";
    mylist2 = mylist1;
    std::cout << "----------------------------------------\n";

    mylist2.emplace_back(42);
    mylist2.emplace_back(42);
}

// 0x7fff866d1e50 constructor, sizeof(T): 24
// 0x7fff866d1e70 constructor, sizeof(T): 24
// 0x7fff866d1e50 A [1]: 0x557c430ec550
// 0x7fff866d1e50 A [1]: 0x557c430fae90
// ----------------------------------------
// 0x7fff866d1d40 copy constructor, sizeof(T): 24
// 0x7fff866d1d40 A [1]: 0x557c430e39a0
// 0x7fff866d1d40 A [1]: 0x557c430f14a0
// ----------------------------------------
// 0x7fff866d1e70 A [1]: 0x557c430f3b30
// 0x7fff866d1e70 A [1]: 0x557c430ec4d0
// 0x7fff866d1e70 D [1]: 0x557c430e39a0
// 0x7fff866d1e70 D [1]: 0x557c430f14a0
// 0x7fff866d1e70 D [1]: 0x557c430f3b30
// 0x7fff866d1e70 D [1]: 0x557c430ec4d0
// 0x7fff866d1e50 D [1]: 0x557c430ec550
// 0x7fff866d1e50 D [1]: 0x557c430fae90

TEST_CASE("move")
{
    std::list<int, myallocator<int>> mylist1;
    std::list<int, myallocator<int>> mylist2;

    mylist1.emplace_back(42);
    mylist1.emplace_back(42);

    std::cout << "----------------------------------------\n";
    mylist2 = std::move(mylist1);
    std::cout << "----------------------------------------\n";

    mylist2.emplace_back(42);
    mylist2.emplace_back(42);
}

// 0x7ffe582e2850 constructor, sizeof(T): 24
// 0x7ffe582e2870 constructor, sizeof(T): 24
// 0x7ffe582e2850  A [1]: 0x56229562d550
// 0x7ffe582e2850  A [1]: 0x56229563be90
// ----------------------------------------
// ----------------------------------------
// 0x7ffe582e2870  A [1]: 0x5622956249a0
// 0x7ffe582e2870  A [1]: 0x5622956324a0
// 0x7ffe582e2870  D [1]: 0x56229562d550
// 0x7ffe582e2870  D [1]: 0x56229563be90
// 0x7ffe582e2870  D [1]: 0x5622956249a0
// 0x7ffe582e2870  D [1]: 0x5622956324a0