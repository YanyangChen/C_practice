//
// Copyright (C) 2019 Rian Quinn <rianquinn@gmail.com>
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

// -----------------------------------------------------------------------------
#ifdef EXAMPLE01

#include <iostream>

class the_answer
{
    int m_answer{42};

public:

    ~the_answer()
    {
        std::cout << "The answer is: " << m_answer << '\n';
    }
};

int main(void)
{
    the_answer is;
    return 0;
}

// The answer is: 42

#endif

// -----------------------------------------------------------------------------
#ifdef EXAMPLE02

#include <iostream>

class the_answer
{
    int m_answer{42};

public:

    the_answer()
    {
        std::cout << "The answer is: " << m_answer << '\n';
    }

public:
    //Big 5: define one of them needs to define them all.
    //default: no implementation needed
    //purpose: a pointer to this class can be used to delete an instance of any class that derives from it. 
    //inheritance will leverage runtime polymorphism not composition.
    virtual ~the_answer() = default;

    the_answer(the_answer &&) noexcept = default;
    the_answer &operator=(the_answer &&) noexcept = default;

    the_answer(const the_answer &) = default;
    the_answer &operator=(const the_answer &) = default;
};

int main(void)
{
    the_answer is;
    return 0;
}

// The answer is: 42

#endif

// -----------------------------------------------------------------------------
#ifdef EXAMPLE03

#include <iostream>

class the_answer
{
    int m_answer{42};

public:

    the_answer()
    {
        std::cout << "The answer is: " << m_answer << '\n';
    }

public:

    ~the_answer() = default;

    the_answer(the_answer &&) noexcept = default;
    the_answer &operator=(the_answer &&) noexcept = default;
    //copies are explicitly deleted
    //defines a move-only class, cannot be copied
    the_answer(const the_answer &) = delete;
    the_answer &operator=(const the_answer &) = delete;
};

int main(void)
{
    the_answer is;
    return 0;
}

// The answer is: 42

#endif

// -----------------------------------------------------------------------------
#ifdef EXAMPLE04

#include <iostream>

class the_answer
{
    int m_answer{42};

public:

    the_answer()
    {
        std::cout << "The answer is: " << m_answer << '\n';
    }

public:

    ~the_answer() = default;
    //contrary to the previous example, this one is a copy-only class
    the_answer(the_answer &&) noexcept = delete;
    the_answer &operator=(the_answer &&) noexcept = delete;

    the_answer(const the_answer &) = default;
    the_answer &operator=(const the_answer &) = default;
};

int main(void)
{
    the_answer is;
    return 0;
}

// The answer is: 42

#endif
