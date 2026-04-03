local vocal_config = {}

local function init()
    require("vocal").setup({
        -- API key (string, table with command, or nil to use OPENAI_API_KEY env var)
        -- api_key = nil,

        -- Directory to save recordings
        recording_dir = "/tmp",

        -- Delete recordings after transcription
        delete_recordings = true,

        -- Keybinding to trigger :Vocal (set to nil to disable)
        keymap = "<leader>v",

        -- Local model configuration (set this to use local model instead of API)
        local_model = {
            model = "base",       -- Model size: tiny, base, small, medium, large
            path = "~/whisper",   -- Path to download and store models
        },

        -- API configuration (used only when local_model is not set)
        -- api = {
        --     model = "whisper-1",
        --     language = nil,       -- Auto-detect language
        --     response_format = "json",
        --     temperature = 0,
        --     timeout = 60,
        -- },
    })
end

local function set_options()
end

local function set_remaps()
end

function vocal_config.setup()
    init()
    set_options()
    set_remaps()
end

return vocal_config
