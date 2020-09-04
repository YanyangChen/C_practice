#include<iostream> 
#include <list> 
  
using namespace std; 
  
// This class represents a directed graph using 
// adjacency list representation 
class Graph 
{ 
    int V;    // No. of vertices 
    bool Directional;
    // Pointer to an array containing adjacency 
    // lists 
    list<int> *adj;    
public: 
    Graph(int V);  // Constructor 

  
    Graph(int V, bool Directional); 
    // function to add an edge to graph 
    void addEdge(int v, int w);  
  
    // prints BFS traversal from a given source s 
    void BFS(int s);   
}; 
  
Graph::Graph(int V) 
{
    this->Directional = true;
    this->V = V; 
    adj = new list<int>[V]; 
}

Graph::Graph(int V, bool Directional) 
{ 
    this->Directional = Directional;
    this->V = V; 
    if (this->Directional)
    adj = new list<int>[V];
    else{
    adj = new list<int>[2*V];
    } 
}
  
void Graph::addEdge(int v, int w) 
{ 
    if (this->Directional)
    adj[v].push_back(w); // Add w to v’s list. 
    else{
    
    adj[v].push_back(w); // Add w to v’s list. 
    adj[w].push_back(v); // Add w to v’s list. 
    }
} 
  
void Graph::BFS(int s) 
{ 
    // Mark all the vertices as not visited 
    bool *visited = new bool[V]; 
    for(int i = 0; i < V; i++) 
        visited[i] = false; 
  
    // Create a queue for BFS 
    list<int> queue; 
  
    // Mark the current node as visited and enqueue it 
    visited[s] = true; 
    queue.push_back(s); 
  
    // 'i' will be used to get all adjacent 
    // vertices of a vertex 
    list<int>::iterator i; 
  
    while(!queue.empty()) 
    { 
        // Dequeue a vertex from queue and print it 
        s = queue.front(); 
        cout << s << " "; 
        queue.pop_front(); 
  
        // Get all adjacent vertices of the dequeued 
        // vertex s. If a adjacent has not been visited,  
        // then mark it visited and enqueue it 
        for (i = adj[s].begin(); i != adj[s].end(); ++i) 
        { 
            if (!visited[*i]) 
            { 
                visited[*i] = true; 
                queue.push_back(*i); 
            } 
        } 
    } 
} 
  
// Driver program to test methods of graph class 
int main() 
{ 
    // Create a graph given in the above diagram 
  Graph g(9,false); 
     
    g.addEdge(0, 1); 
    //g.addEdge(1, 0); 
    g.addEdge(1, 2); 
    //g.addEdge(2, 1); 
    g.addEdge(2, 3); 
    //g.addEdge(3, 2); 
    g.addEdge(0, 4); 
    //g.addEdge(4, 0); 
    g.addEdge(4, 5); 
    //g.addEdge(5, 4); 
    g.addEdge(5, 6); 
    //g.addEdge(6, 5); 
    g.addEdge(4, 7); 
    //g.addEdge(7, 1); 
    g.addEdge(0, 8); 
    //g.addEdge(8, 0); 
    g.addEdge(8, 9); 
  
    g.BFS(4); 
  
    return 0; 
} 
