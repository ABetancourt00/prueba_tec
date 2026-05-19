# Módulo Terraform — S3 Bucket seguro

Módulo reutilizable de Terraform para provisionar buckets S3 en AWS con controles de seguridad habilitados por defecto: bloqueo de acceso público, versionamiento y cifrado en reposo.

## Uso

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/tu-repo.git
cd tu-repo
```

### 2. Crear el archivo de variables

```bash
cp terraform.tfvars.example terraform.tfvars
# Editar terraform.tfvars con tus valores
```

### 3. Inicializar y validar

```bash
terraform init
terraform fmt -check -recursive
terraform validate
```

### 4. Planificar y aplicar

```bash
terraform plan
terraform apply
```

## Variables del módulo

| Variable | Descripción | Tipo | Default | Requerida |
|---|---|---|---|---|
| `bucket_name` | Nombre único del bucket | `string` | — | Sí |
| `environment` | Entorno: dev, staging, prod | `string` | — | Sí |
| `sse_algorithm` | Algoritmo de cifrado | `string` | `AES256` | No |

## Outputs del módulo

| Output | Descripción |
|---|---|
| `bucket_arn` | ARN del bucket S3 creado |
| `bucket_name` | Nombre final del bucket |

## Controles de seguridad habilitados por defecto

| Control | Descripción |
|---|---|
| Bloqueo de acceso público | Bloquea ACLs y políticas públicas |
| Versionamiento | Guarda versiones anteriores de objetos |
| Cifrado en reposo | AES256 por defecto, compatible con KMS |

## Pipeline de CI

El workflow `.github/workflows/ci.yml` se ejecuta automáticamente en cada Pull Request hacia `main` y corre: checkout, setup, init, fmt, validate y Checkov.
EOF