# I-9 Advisor
This is an agentic AI project to create a chatbot that vets an I-9 is ready complete or has errors and to explain to the users steps to complete the form.

This project provides a proof of technology in the form of Jupyter Notebook(s) that demonstrate a Retrieval-Augmented Generation (RAG) using a Large Language Model (LLM).

## Features

The proof of technology demonstrates the ability of LLM to help humans solve problems to improve their own workflow. 

This proof of technology demonstates:

- **Vector database** for a vector search (scraped government website and I-9 documentation)
- LLM Queries that provide the actions humans can take to complete their task in compliance with the rules as described in a set of documentation.
- **AgenticAI** to demonstrate:

    - Accept input of a PDF, and uses optical character recognition of a LLM to idenfity the user information provided
    - Route user question to a vectorstore or web search
    - Use the information retrieved from the vectorstore to answer the question about the input PDF
    - Filter out erroneous retrievals
    - Filter out hallucination
    - Grades the response so we get the right one
- Provides a list of steps for the user to take to complete the form

## Vector database

Vector databases work alongside large language models by storing and efficiently searching through high-dimensional vector representations of text, images, or other data. When text or images are processed by an LLM or embedding model, they're converted into dense numerical vectors that capture their semantic meaning. 

These vectors are then stored in specialized databases optimized for similarity search, using algorithms like Approximate Nearest Neighbors (ANN) to quickly find the most similar vectors to a query. This enables applications like semantic search, where a user's query is converted to a vector and matched against stored document vectors, or retrieval-augmented generation, where relevant context is pulled from the vector database to help ground an LLM's responses in specific knowledge.

![Architecture](./media/architecture.png)

From [Azure OpenAI RAG workshop](https://github.com/Azure-Samples/azure-openai-rag-workshop/blob/main/docs/assets/architecture.png)

## RAG

RAG (Retrieval Augmented Generation) combines external knowledge retrieval with LLM capabilities. When given a query, the system first converts it into an embedding vector and uses it to search through a collection of documents/passages that have also been embedded, retrieving the most relevant ones based on semantic similarity. 

These retrieved chunks are then injected into the LLM's prompt along with the original query, allowing the model to generate a response that incorporates both its trained knowledge and the specific external information. This approach helps overcome LLMs' knowledge cutoff limitations and enables them to access up-to-date or domain-specific information while reducing hallucination by grounding responses in retrieved facts.

![RAG](./media/diagram.png)

Diagram from [LLM-RAG](https://github.com/rendy-k/LLM-RAG/blob/main/README.md)

## AgenticAI

LangGraph is a framework for building stateful, multi-agent applications using language models. It allows you to create flow-based applications where different components (which could be language models or other tools) can communicate with each other and maintain state across interactions. 

Think of it like a workflow engine where each node can be a language model performing a specific task, and the graph structure determines how these tasks connect and flow into each other. For instance, you could create a flow where one language model analyzes a document, passes relevant information to another model that generates questions, and then routes those questions to a third model that provides answers, all while maintaining context and state throughout the process.

### Key Concepts of LangGraph

1. **Stateful Graph**: LangGraph revolves around a stateful graph, where each node represents a step in your computation. The graph maintains a state passed around and updated as the computation progresses.

2. **Nodes**: Nodes are the building blocks of your LangGraph. Each node represents a function or a computation step. You define nodes to perform specific tasks, such as processing input, making decisions, or interacting with external APIs.

3. **Edges**: Edges connect the nodes in your graph, defining the computation flow. LangGraph supports conditional edges, allowing you to dynamically determine the next node to execute based on the current state of the graph.

![Example AgenticAI](./media/image_DzUBLNk-thumbnail_webp-600x300.webp)
 
Example of LangGraph Workflow from [Building Reliable Agent using Advanced Rag Techniques, LangGraph, and Cohere LLM](https://www.analyticsvidhya.com/blog/2024/05/building-llm-agent-using-advanced-rag-techniques/)

## References

- [Hands-on Implementation of our Agentic RAG System with LangGraph](https://www.analyticsvidhya.com/blog/2024/07/building-agentic-rag-systems-with-langgraph/)