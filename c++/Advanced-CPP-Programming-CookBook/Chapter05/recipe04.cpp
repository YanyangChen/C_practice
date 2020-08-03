//
// Copyright (C) 2019 Rian Quinn <user@gmail.com>
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

#include <mutex>
#include <stack>
#include <iostream>
#include <thread>

template<typename T>
class my_stack
{
    std::stack<T> m_stack;
    mutable std::mutex m{};

public:

    int counter = 0;
    int sum = 0;
    template<typename ARG>
    void push(ARG &&arg)
    {
        std::lock_guard lock(m);
	sum += std::forward<ARG>(arg);
	std::cout << std::forward<ARG>(arg) << "\n" << static_cast<void*>(this) << "\n";


	counter++;
        m_stack.push(std::forward<ARG>(arg));
    }

    void pushint(int i){
    push(i);
    }
    
    void pop()
    {
        std::lock_guard lock(m);
	std::cout << "cout top " << m_stack.top() << "\n"; 
        m_stack.pop();
    }

    auto empty() const
    {
        std::lock_guard lock(m);
        return m_stack.empty();
    }
};

int main(void)
{
    my_stack<int> s;
    int a = 4;
    //stackoverflow.com/questions/21617860
    std::thread t1([&]{ s.push(4); });
    std::thread t2([&]{ s.push(5); });
    std::thread t3([&]{ s.push(6); });
    std::thread t4([&]{ s.push(7); });
    std::thread t5([&]{ s.push(8); });
    std::thread t6([&]{ s.push(9); });
    t1.join();
    t2.join();
    t3.join();
    t4.join();
    t5.join();
    t6.join();
    while(!s.empty()) {
        s.pop();
    }
    std::cout << s.counter << "\n" << s.sum << "\n";
    return 0;
}

#endif
// -----------------------------------------------------------------------------
#ifdef EXAMPLE02

#include <mutex>
#include <stack>
#include <iostream>
#include <thread>

template<typename T>
class my_stack
{
    std::stack<T> m_stack;
    mutable std::mutex m{};

public:

    int counter = 0;
    int sum = 0;
    template<typename ARG>
    void push(ARG &&arg)
    {
        std::lock_guard lock(m);
	sum += std::forward<ARG>(arg);
	std::cout << std::forward<ARG>(arg) << "\n" << static_cast<void*>(this) << "\n";


	counter++;
        m_stack.push(std::forward<ARG>(arg));
    }

    void pushint(int i){
    push(i);
    }
    
    void pop()
    {
        std::lock_guard lock(m);
	std::cout << "cout top " << m_stack.top() << "\n"; 
        m_stack.pop();
    }

    auto empty() const
    {
        std::lock_guard lock(m);
        return m_stack.empty();
    }
};

int main(void)
{
    my_stack<int> s;

   // std::thread t1(&my_stack<int>::pushint, &s, 4);
    //std::thread t2(&my_stack<int>::pushint, &s, 8);
    //std::thread t3(&my_stack<int>::pushint, &s, 15);
    //std::thread t4(&my_stack<int>::pushint, &s, 16);
    //std::thread t5(&my_stack<int>::pushint, &s, 23);
    //std::thread t6(&my_stack<int>::pushint, &s, 42);
    s.push(4);
    s.push(8);
    s.push(15);
   s.push(16);
    s.push(23);
    s.push(42);
    //t1.join();
    //t2.join();
    //t3.join();
    //t4.join();
    //t5.join();
    //t6.join();
    while(!s.empty()) {
        s.pop();
    }
    std::cout << s.counter << "\n" << s.sum << "\n";
    return 0;
}

#endif
