# ElevenLabs voice configuration (notes)

Steps to enable voice with ElevenLabs:

1. Copy `.env.example` to `.env` and fill the values (don't commit `.env`).
2. If you prefer, store `.env` securely in your PKM vault:
   `D:\PIF Servizi DIgitali - Cervello\projects\joe-my-personal-jarvis` and create a symbolic link to repo root.
3. Edit `config/elevenlabs.example.yml` if you need custom settings.
4. Run the helper to start Jarvis:

```powershell
.\scripts\start_jarvis.ps1
```

Notes on secrets:
- Do NOT store API keys in the public repository. Use `.env` or OS environment variables.
- On Windows you can set user environment variables or use a credential manager.
