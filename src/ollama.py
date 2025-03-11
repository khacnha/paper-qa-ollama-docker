
from paperqa import Settings, ask
from paperqa.settings import AgentSettings
model = "ollama/llama3.1"

local_llm_config = {
    "model_list": [
        {
            "model_name": model,
            "litellm_params": {
                "model": model,
                "api_base": "http://ollama:11434",
            },
        }
    ]
}

answer_response = ask(
    "who was the first scientist to study synchronization in pendulum clocks?",
    settings=Settings(
        llm=model,
        llm_config=local_llm_config,
        summary_llm=model,
        summary_llm_config=local_llm_config,
        embedding="ollama/mxbai-embed-large",
        agent=AgentSettings(
            agent_llm=model, agent_llm_config=local_llm_config, timeout=1200
        )
    ),
)
