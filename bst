#include <iostream>
#include<malloc.h>
using namespace std;
struct node
{
    struct node *left,*right;
    struct node *n;
    int data;
};
struct node *create(int data)
{
    struct node *n = (struct node *)malloc(sizeof(struct node));
    n->data = data;
    n->left = NULL;
    n->right = NULL;
    return n;
}
struct node *delete(struct node *n, int key)
{
    if(key<n->data)
    {
        delete(n->left, key);
    }
    else if(key>n->data)
    {
        delete(n->right, key);
    }
    else
    {
        
        
    }
}
int main() 
{
    struct node *p= create(8);
    struct node *p1= create(4);
    struct node *p2= create(9);
    struct node *p3= create(1);
    struct node *p4= create(5);
    
    p->left = p1;
    p->right = p2;
    p1->left = p3;
    p1->right = p4;
    
    return 0;
}
