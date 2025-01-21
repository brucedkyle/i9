# Create I-9 Assistant

This example demonstrates how to build a Chatbot application for the user to interact with ChatGPT. You will traing GPT models with proprietary datasets and develop an applications atop them.

The following technologies are used in this application:

- **OpenAI GPT** is a web-based chatbot application that has been specifically designed and fine-tuned for optimal dialogue interactions.
- **LangChain** is a robust library designed to streamline interaction with large language models (LLMs) providers like OpenAI. It supports other LLM providers as such as Cohere, Bloom, Huggingface as well. LangChain’s unique proposition is its ability to create *Chains*, which are logical links between one or more LLMs.

## Prerequisites

You will need:

- [OpenAI API key](http://platform.openai.com/account/api-keys) with [enough credits](http://platform.openai.com/account/usage)
- [Tavily Search API key](https://app.tavily.com/home)

## Set up OpenAI key

Once you get your OpenAI API key and Tavily API Key, put it into a `.env` file as shown in this steps in this section.

### Create a project folder

Navigate to the location you want to create the project.

```bash
mkdir chat-with-data
cd chat-with-data
pwd
## should so the path to your project
```

### Create .env file

You will need a file named `.env` at the root node of the project to store your secrets, your API keys, and database passwords.

To create the `env` file, create it and add your API keys as needed. For example, from the root of your project folder:

```sh
cat > .env <<EOF
#!/bin/bash  
#filename: .env
OPENAI_API_KEY=11683yourkey
TAVILY_API_KEY=88537yourkey
EOF
```

Replace the guid with your actual key. 

> [!IMPORTANT]
> Your `.gitignore` file should include `.env` in its list of files not to check in.

Next, you create the LlamaIndex with your documents.

## Start Notebook from WSL command line

To start the environment. Go to your project directory, then:

```bash
conda env create -f environment.yml
conda activate i9_assistant
jupyter notebook
```

Open the `i0_assistant.ipynb` notebook.

When you are done:

```bash
conda deactivate
```

## Next steps

See:

- [Introduction to prompt engineering](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/prompt-engineering) 
- [Prompt engineering techniques](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/advanced-prompt-engineering) 
- [OpenAI Cookbook](https://github.com/openai/openai-cookbook)

## References

This article is based on [Creating Custom ChatGPT with Your Own Dataset using OpenAI GPT-3.5 Model, LlamaIndex, and LangChain](https://medium.com/rahasak/creating-custom-chatgpt-with-your-own-dataset-using-openai-gpt-3-5-model-llamaindex-and-langchain-5d5837bf9d56).

- [Developer quickstart](https://platform.openai.com/docs/quickstart?language-preference=python&quickstart-example=completions&desktop-os=windows) OpenAI documentation