
// C++ program to print DFS traversal from 
// a given vertex in a  given graph 
#include<bits/stdc++.h> 
#include<algorithm>
using namespace std; 
  
// Graph class represents a directed graph 
// using adjacency list representation 
class Graph 
{ 
    int V;    // No. of vertices 
    bool Directional; 
    // Pointer to an array containing 
    // adjacency lists 
    list<int> *adj; 
    vector<int> *ancestors;
    // A recursive function used by DFS 
    void DFSUtil(int v, bool visited[]); 
public: 
    Graph(int V);   // Constructor 
  
    Graph(int V, bool Directional); 
    // function to add an edge to graph 
    void addEdge(int v, int w); 
  
    // DFS traversal of the vertices 
    // reachable from v 
    void DFS(int v);
    void BFS(int v);
}; 
  
Graph::Graph(int V) 
{ 
    this->Directional = true;
    this->V = V; 
    adj = new list<int>[V];
    ancestors = new vector<int>[V];
} 
  
Graph::Graph(int V, bool Directional) 
{ 
    this->Directional = Directional;
    this->V = V; 
    if (this->Directional){
    adj = new list<int>[V];
    ancestors = new vector<int>[V];}
    else{
    adj = new list<int>[2*V];
    ancestors = new vector<int>[V];
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
  
void Graph::DFSUtil(int v, bool visited[]) 
{ 
    // Mark the current node as visited and 
    // print it 
    visited[v] = true; 
    cout << v << " "; 
  
    // Recur for all the vertices adjacent 
    // to this vertex 
    list<int>::iterator i; 
    for (i = adj[v].begin(); i != adj[v].end(); ++i)
      
      if (!visited[*i]){
	/*********************looking for cercle*********************/
	ancestors[*i].push_back(v);
	if(!ancestors[v].empty()){
	  //copy(ancestors[v].begin(), ancestors[v].end(), back_inserter(ancestors[*i]));
	  if(std::find(ancestors[v].begin(), ancestors[v].end(), *i) != ancestors[v].end()){
	    cout << "circle exists in " << *i << "\n";
	}
	  ancestors[*i].insert(ancestors[*i].end(), ancestors[v].begin(), ancestors[v].end());
	}
	std::cout <<"bgin";
	  
	for (std::vector<int>::const_iterator k = ancestors[*i].begin(); k != ancestors[*i].end(); ++k)
	  std::cout <<' ' << *k << ' ';
	


	
	std::cout <<"end";
	/*********************looking for cercle*********************/
	  DFSUtil(*i, visited);} 
} 
  
// DFS traversal of the vertices reachable from v. 
// It uses recursive DFSUtil() 
void Graph::DFS(int v) 
{ 
    // Mark all the vertices as not visited 
    bool *visited = new bool[V]; 
    for (int i = 0; i < V; i++) 
        visited[i] = false; 
    // ancestors[v].push_back(999);
    // Call the recursive helper function 
    // to print DFS traversal 
    DFSUtil(v, visited); 
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

// Driver code 
int main(int argc, char *argv[])
{ 
    // Create a graph given in the above diagram 
    Graph g(11,false); 
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
    g.addEdge(6, 0); 
    g.addEdge(6, 4); 
    
    //g.addEdge(3, 3); 
  
    cout << " DFS";
    g.DFS(0); 
    cout << "\n";
    cout << " BFS";  
    g.BFS(4);
    cout << "\n";
    return 0; 
} 

