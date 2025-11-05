# n8n en Render

Deploy de n8n en Render.com

## Pasos para deployar:

1. **Sube este repo a GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin <tu-repo-url>
   git push -u origin main
   ```

2. **En Render.com:**
   - Crea una cuenta en https://render.com
   - New → Web Service
   - Conecta tu repositorio de GitHub
   - Configura:
     - Name: `n8n`
     - Environment: `Docker`
     - Instance Type: `Free`

3. **Variables de entorno (en Render):**
   ```
   N8N_ENCRYPTION_KEY=<genera-una-key-random>
   N8N_BASIC_AUTH_ACTIVE=true
   N8N_BASIC_AUTH_USER=<tu-usuario>
   N8N_BASIC_AUTH_PASSWORD=<tu-password>
   WEBHOOK_URL=https://<tu-app>.onrender.com/
   ```

4. **Importar workflows:**
   - Una vez deployado, accede a tu n8n
   - Importa el archivo `my-workflow.json` desde la interfaz

## Notas:
- El tier gratuito "duerme" después de 15 min de inactividad
- Los datos se pierden si el servicio se reinicia (necesitas un disco persistente de pago)
