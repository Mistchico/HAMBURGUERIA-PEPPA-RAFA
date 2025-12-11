package peppa.hamburgueria;

public class Main {

    public static void main(String[] args) {

        CardapioService cardapio = new CardapioService();
        PedidoService pedido = new PedidoService(cardapio);

        double total = pedido.calcularTotal("x-burger", 2);
        int tempo = pedido.calcularTempoEstimado(2);

        System.out.println("Total do pedido: " + total);
        System.out.println("Tempo estimado: " + tempo + " min");
    }
}
