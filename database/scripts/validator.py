import pandas as pd

# Simulação de dados para validação de carga (Foco: Agrotech/FMCG)
logistics_data = {
    'id_entrega': [101, 102, 103],
    'veiculo': ['Fiat Toro', 'Chevrolet S10', 'Fiat Toro'],
    'peso_carga_kg': [950, 1150, 1050],
    'produto': ['Milho', 'Leite', 'Soja']
}

def check_vehicle_capacity():
    df = pd.DataFrame(logistics_data)
    
    print("--- Relatório de Validação de Frota ---")
    
    for index, row in df.iterrows():
        # Regra de Negócio: Capacidade da Fiat Toro é de aprox. 1000kg
        if row['veiculo'] == 'Fiat Toro' and row['peso_carga_kg'] > 1000:
            print(f"❌ Alerta: Entrega {row['id_entrega']} EXCEDEU o limite da {row['veiculo']} ({row['peso_carga_kg']}kg).")
        else:
            print(f"✅ Entrega {row['id_entrega']} para o veículo {row['veiculo']} está DENTRO do limite.")

if __name__ == "__main__":
    check_vehicle_capacity()
