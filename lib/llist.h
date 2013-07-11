/*
 * llist.h is part of libllist.
 * 
 * libllist is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * libllist is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with libllist.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * llist.h 
 *
 * AUTHOR: Noah Harvey
 *
 * VERSION: v0.0.1
 *
 * DESCRIPTION: main header file for libllist
 */

/*
 * MACRO: VALIDPNTR
 * 
 * PARAMETERS: x
 * 
 * DESCRIPTION: checks if given value isn't NULL or 0 and forces an exit of containing function if
 * it is.
 */
#ifndef VALIDPNTR
#define VALIDPNTR(x,returnval) if(!x) return returnval
#endif 

#ifndef __LLIST
#define __LLIST

struct node
{
	void* data;
	struct node* next;
	struct node* prev;
};

typedef struct llist
{
	struct node* head;
	struct node* tail;
	int length;	
} LList;

/*
 * FUNCTION: nodenew
 * 
 * PARAMETERS: 
 *
 * RETURNS: struct node* - new node
 * 
 * DESCRIPTION: creates a newly created node with all initial values = NULL;
 *
 * NOTE: returns a NULL pointer on error
 */
struct node* nodenew();

/*
 * FUNCTION: llnew
 * 
 * PARAMETERS: 
 *
 * RETURNS: LList* - pointer to new llist
 * 
 * DESCRIPTION: creates a newlist
 *
 * NOTE: returns NULL pointer if error occurs
 *
 * RETURN DETAILS: upon a successful creation the newly created LList contains: 
 *   head = NULL;
 *   tail = NULL;
 *   length = 0;
 * 				
 */
LList* llnew();

/*
 * FUNCTION: lldestroy
 * 
 * PARAMETERS: LList* list
 *
 * RETURNS: int - error code
 * 
 * DESCRIPTION: frees the memory used by the linked list
 *
 * NOTES: error codes: 0 - no error; 1 - something bad happened
 */
int lldestroy(LList* list);

/*
 * FUNCTION: llappend
 * 
 * PARAMETERS: LList* list, void* data
 *
 * RETURNS: LList* - linked list with appended node
 * 
 * DESCRIPTION: appends the data to the end of the given LList
 *
 * NOTE: returns NULL pointer if error occurs
 */
LList* llappend(LList* list, void* value);

/*
 * FUNCTION: llget
 * 
 * PARAMETERS: LList* list, int index
 *
 * RETURNS: struct node* - node pointer 
 * 
 * DESCRIPTION: pointer to node found at the given index. 
 *
 * NOTE: if occurs NULL pointer is returned
 */
struct node* llget(LList* list, int index);

/*
 * FUNCTION: llgetvalue
 * 
 * PARAMETERS: LList* list, int index
 *
 * RETURNS: void* - void poiner
 * 
 * DESCRIPTION: returns the data found for the node at index
 */
void* llgetvalue(LList* list, int index);

/*
 * FUNCTION: llinsert
 * 
 * PARAMETERS: LList* list, void* data, int index
 *
 * RETURNS: LList* - list with inserted node
 * 
 * DESCRIPTION: inserts the given data at the given index
 *
 * NOTE: NULL pointer returned if error occurs
 *
 * INDEX NOTE: index values must be >= 0 or <= list->length
 */
LList* llinsert(LList* list, void* value, int index);

/*
 * FUNCTION: llset
 * 
 * PARAMETERS: LList* list, void* value, int index
 *
 * RETURNS: LList*  - list with inserted value
 * 
 * DESCRIPTION: inserts the given value for the node located at index
 */
LList*  llset(LList* list, void* value, int index);

#endif 
