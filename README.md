# Test-programación-Lab-BiceVida Diego Marcano
test de Lab BiceVida Devops

Crear mediante Terraform un aplicativo Docker en AWS Elastic Beanstalk.

### Requerimientos. 📋

| Name | Version |
|------|---------|
| terraform | = 0.13.5 |
| aws | = 2.0.62 |

### Provedor 📋

| Name | Version |
|------|---------|
| aws | = 2.0.62 |

### ¿Cómo ejecutar? 🔧

1. Crear y entrar a la carpeta Lab_BiceVida creada en C:\Lab_BiceVida
2. Clonar el proyecto de setup desde el siguiente enlace y colocar en el directorio que se describe en el paso 2:
https://github.com/diegomarca07/-Test-programaci-n-Lab-BiceVida-Diego-Marcano-.git
3. Ingresar el comando: 
aws configure ---- para introducir credenciales de acceso para conectarse a aws.
4. Ingresar el comando: 
terraform init ---- para inicializar la configuración con Terraform.
5. Ingresar el comando: 
terraform plan ---- para crear y actualizar plan de ejecución.
6. Por ultimo se ingresa el comando: 
terraform apply ---- para desplegar la aplicación en aws
7. Validar creación de la aplicación Docker en Aws.

## Parametros ⚙️

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | Elastic Beanstalk Application description | `string` | `""` | yes |
| environment | Environment, e.g. 'BiceEnvironment', 'UAT' | `string` | `""` | yes |
| name | Solution name, e.g. 'bice_name_application' | `string` | n/a | yes |
| namespace | Namespace, which could be your organization name, e.g. 'eg' or 'cp' | `string` | `""` | yes |
| tags | Additional tags (e.g. `map('bice_vpc_id`,`XYZ`) | `map(string)` | `{}` | yes |

## Outputs

| Name | Description |
|------|-------------|
| bice_name_application | Elastic Beanstalk Application name |




## Autor ✒️

* **Diego Marcano** 
