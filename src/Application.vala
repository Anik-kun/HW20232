public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.Anik-kun.HW2023",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    protected override void activate () {
    
            var button_hello = new Gtk.Button.with_label ("Нажми") {
            margin = 12
        };
        
        button_hello.clicked.connect (() => {
            button_hello.label = "hello word!";
            button_hello.sensitive = false;
        });
    
        var main_window = new Gtk.ApplicationWindow (this){
            default_height = 80,
            default_width = 150,
            title = "Hello World 2023!"
        };
        main_window.add (button_hello);
        main_window.show_all ();
        

    }
    
    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
