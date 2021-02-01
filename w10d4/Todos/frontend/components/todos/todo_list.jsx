import React from 'react';
import { TodoListItem } from '../todo_list/todo_list_item';
import TodoForm from '../todo_list/todo_form';


export const TodoList = (props) => {
    return (
        <div>
            
            <h1>To-Do's List</h1>
            <ul>
                {props.todos.map((todo) => {
                    return ( 
                        <TodoListItem key={todo.id} todo={todo}/>
                    )
                })}
            </ul>

            <TodoForm receiveTodo={props.receiveTodo} />
        </div>
    )
}
