# Notebooks

The notebooks in this section demonstrate the various tasks that can be taken on using GenAI.

## Crew Agentic

- [crew-agentic](./crew-agentic.ipynb)
-  Based on the blog post [How Agentic RAG Systems with CrewAI and LangChain Transform Tech?](https://www.analyticsvidhya.com/blog/2024/09/how-agentic-rag-systems-transform-tech/)
- **Overall Goal**: The code creates a Retrieval-Augmented Generation (RAG) system using agents in Google Colab. This system aims to answer questions by retrieving relevant information from either a PDF document or the web, and then providing a concise answer.

## Simple QA RAG
- [RAG_GJ_colab](RAG_GL_colab.ipynb) and [RAG_GL_local](RAG_GL_local.ipynb)
- From U of Texas Austin Decision Science and AI Immersion Week
- **Summary**: This code sets up a question-answering system that uses a language model to answer questions based on information extracted from a given text document. This is accomplished by chunking the document, generating text embeddings, storing them in a vector database, and using a RetrievalQA chain to retrieve relevant information and generate answers to user queries.

## Data extraction using OCR
- [Data_extraction_transformation](Data_extraction_transformation.ipynb)
- Based on [Data extraction and transformation in ELT workflows using GPT-4o as an OCR Alternative](https://github.com/openai/openai-cookbook/blob/main/examples/Data_extraction_transformation.ipynb)
- **Summary**:  This code defines an ELT (Extract, Load, Transform) workflow for processing hotel invoice data. It leverages GPT-4o's capabilities for OCR, data extraction, and transformation to convert unstructured PDF data into a structured format suitable for database storage and analysis.