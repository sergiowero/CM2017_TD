//
//  ViewController.m
//  TD
//
//  Created by Walter Gonzalez Domenzain on 29/11/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "Components.h"
#import "cellComponents.h"
#import "ComponentsDetails.h"

@interface Components ()

@property (strong, nonatomic) NSMutableArray<ComponentsObject *> *listComp;

@end

@implementation Components

int idx=0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initController];
    
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];

}

- (void)initController {
    _listComp = [[NSMutableArray alloc] init];
    
    ComponentsObject *c1=[[ComponentsObject alloc] init];
    
    c1.name=@"Inteligencia Artificial";
    c1.details=@"¿Es posible construir máquinas inteligentes? ¿Es el cerebro una máquina? Estas dos preguntas han sido la obsesión de grandes pensadores durante siglos. Pero con el desarrollo de la inteligencia artificial, ambas cuestiones se han acercado e incluso se han unificado pues utilizan los mismos conceptos, técnicas y experimentos en los intentos de diseñar máquinas inteligentes y en investigar la naturaleza de la mente. El objetivo último de la inteligencia artificial —lograr que una máquina tenga una inteligencia de tipo general similar a la humana— es de los más ambiciosos que se ha planteado la ciencia. Por su dificultad, es comparable a otros grandes objetivos científicos como explicar el origen de la vida, el del universo o conocer la estructura de la materia. Actualmente, todavía sabemos poco acerca del cerebro; sin embargo, estamos siguiendo un camino que pasa por considerarlo un sistema computacional y hemos empezado a explorar el espacio de posibles modelos computacionales que permitan emular su funcionamiento.";
    c1.image=[UIImage imageNamed:@"Artificial-Intelligence.jpg"];
    //c1.image= [UIImage imageNamed:@"imagen jpg"]; // EDGE example
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    [_listComp addObject:c1];
    
    ComponentsObject *c2=[[ComponentsObject alloc] init];
    c2.name=@"Vehiculos Autonomos";
    c2.details=@"Vehículos sin conductor una realidad que se asoma; sin embargo, y a pesar de la intensa propaganda efectuadas por las compañías empeñadas en hacer este proyecto una realidad, para muchísimas personas es apenas un rumor al que no le han prestado ninguna atención especial. Se acerca una revolución, algo que alterará nuestra vida diaria, para muchos será una solución a sus problemas, para muchos otro el final de su estilo de vida o aún más de su medio de vida.     La aparición de los autos sin conductor marcará la substitución, de choferes humanos por sistemas de inteligencia artificial en gran escala; será un hito que delimitará el comienzo de despidos masivos, y el inicio de un problema social, que irá abarcando cada vez más ámbitos del desenvolvimiento humano. El empleo de sistemas de inteligencia artificial, se verá reflejado en robots y en máquinas automatizadas muy sofisticadas.     Los autos del siglo XXI serán una revolución, no solo por liberar a las personas de una actividad manual, sino porque vendrán acompañados de alternativas energéticas: carros eléctricos, carros alimentados por energía solar o híbridos que brindaran una u otra energía.     La marcada tendencia al uso de automóviles eléctricos vendrá acompañada de baterías cada vez más eficientes y con mayor autonomía.    Sí bien los autos sin conductor, que usarán energía limpia serán los elementos más visibles en la evolución de los vehículos terrestres, estos no serán los únicos: trenes balas, motos, bicicletas, skates, patines e incluso sofisticados zapatos serán parte del arsenal de maravillas tecnológicas que el siglo XXI nos pondrá en vitrina. Los vehículos personales, cero emisiones y para trayectos cortos se hacen cada vez más populares";
    c2.image=[UIImage imageNamed:@"vehiculosautonomos.jpg"];
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listComp addObject:c2];
    
    ComponentsObject *c3=[[ComponentsObject alloc] init];
    c3.name=@"Big Data Cómputo en la nube";
    c3.details=@"En la era de grandes conjuntos de datos, procedentes de diversos orígenes, en formatos variados y con una necesidad de procesamiento y análisis rápido y efectivo, las técnicas de Big Data persiguen complementar el manejo ordenado de estos volúmenes, con las técnicas de análisis de la información más avanzadas y efectivas para extraer de modo óptimo el conocimiento contenido en los datos.      Las herramientas de Big Data se basan en el paquete de código abierto llamado Hadoop para el análisis masivo de datos, que forma parte de prácticamente todo el software de Big Data. Por ejemplo, SAS incorpora Hadoop en sus aplicaciones (SAS Base, SAS Data Integration, SAS Visual Analytics, SAS Visual Statistics, etc.). IBM trabaja con Hadoop en su plataforma IBM InfoSphere BigInsights. Microsoft incluye Hadoop en su plataforma Windows Azure, SQL Server 2014, HDInsight y Polybase. Oracle incluye Hadoop en Oracle Big Data Appliance, Oracle Big Data Connectors y Oracle Loader for Hadoop.        Las herramientas de BIG DATA, que utilizan tecnologías multinúcleo para ofrecer mayor capacidad de procesamiento a través de altas prestaciones, en base de datos y de análisis en memoria que ofrecen un mayor conocimiento más rápidamente de grandes volúmenes de datos y flujo de datos, independientemente de los formatos y las fuentes de los orígenes de datos.";
    c3.image=[UIImage imageNamed:@"bigdata.jpg"];
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listComp addObject:c3];
    
    ComponentsObject *c4=[[ComponentsObject alloc] init];
    c4.name=@"Impresión 3D";
    c4.details=@"El filósofo Bertrand Russell dijo que el trabajo consiste en mover materia en el espacio. Hacer una ensalada, ensamblar una silla o construir un auto es en el fondo el mismo proceso de colocar insumos en una configuración deseada. ¿Qué pasaría si tuviésemos una maquina universal de mover materia en el espacio? ¿Cuáles serían la consecuencias en el largo plazo para la sociedad, la economía y la política?     Con el rápido desarrollo de la tecnología de impresión 3D estamos cada vez más cerca de tener esta maquina universal que puede construir cualquier producto a base de diseños digitales. Los productos ya no van a ir de un país a otro en camiones y barcos transatlánticos sino que van a viajar en una fracción de segundo a través de la red. ¿Qué significaría tener fronteras en un mundo donde se puede bajar cosas físicas al igual que hoy bajamos música en MP3? ¿Qué pasaría con el liderazgo económico de China cuando empresas multinacionales puedan imprimir sus productos directamente en las tiendas, en el barrio del consumidor final? ¿Cómo cambiaría la naturaleza del mundo laboral cuando ya no necesitemos cadenas de ensamblaje y manufactura? ¿Qué tipos de habilidades se van a valorar? ¿Qué habilidades nuevas vale la pena aprender?     Estamos en vísperas de una revolución que va a transformar el mundo igual o más que la revolución industrial. El invento de las maquinas a vapor borró el valor de la fuerza bruta y cambió para siempre la naturaleza de nuestra economía y nuestra sociedad. Las impresoras 3D van mucho más allá, ya que estas maquinas van a liberarnos de todos los trabajos que son repetitivos y monótonos.";
    c4.image=[UIImage imageNamed:@"impresion3d.jpg"];
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listComp addObject:c4];
    
    ComponentsObject *c5=[[ComponentsObject alloc] init];
    c5.name=@"Internet de las Cosas";
    c5.details=@"Cada día que pasa existen nuevos dispositivos conectados a internet. Y mientras el número de estos dispositivos crece, también crece la cantidad de información generada por nuestra interacción con los mismos. Existen, televisiones que pueden conectarse a proveedores de contenido en línea o correr incluso aplicaciones cómo lo haría un smartphone. Contamos actualmente también con refrigeradores generando información acerca de su contenido y de su uso. Sistemas de alumbrado que pueden ser manejados remotamente o programados para encender o cambiar su color dependiendo de las preferencias del usuario. Tenemos también, cámaras que podemos monitorear desde cualquier lugar donde tengamos acceso a internet, y saber que está ocurriendo cuando no estamos presentes.    En esta área el reto es cómo podemos sacar el mejor provecho de esta información. Seguramente seguirá creciendo la demanda por estas empresas y empleos para este análisis. Generando nuevas carreras de científicos de datos, expertos en redes neuronales, aprendizaje profundo y análisis avanzado de datos.     Además, estás nuevas tecnologías nos traen nuevos retos, por ejemplo, las regulaciones y leyes alrededor de las mismas deben adaptarse a este nuevo paradigma y a la vez mantener el equilibrio social. Realmente es una época muy emocionante en la que también tenemos esta gran responsabilidad de darle forma al mundo ante este nuevo contexto tecnológico y social.    \"Una máquina puede hacer el trabajo de 50 hombres corrientes. Pero no existe ninguna máquina que pueda hacer el trabajo de un hombre extraordinario.\"        - Elbert Hubbart";
    c5.image=[UIImage imageNamed:@"IoT.jpg"];
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listComp addObject:c5];

    ComponentsObject *c6=[[ComponentsObject alloc] init];
    c6.name=@"Robots y drones";
    c6.details=@"Los drones llevan con nosotros desde principios del siglo XX. Sin embargo, hubo que esperar hasta la segunda década del presente siglo para que el uso de estos vehículos aéreos dejara de estar restringido al ámbito militar. Así, mientras que antes los científicos solo podían tomar datos y fotografías de la superficie terrestre con satélites y avionetas, ahora pueden aprovechar las ventajas de estos aparatos en sus investigaciones: identificar animales y plantas, detectar especies vegetales que sufren estrés, vigilar la evolución de especies amenazadas, crear mapas 3D, predecir inundaciones, estudiar la proliferación de algas en el mar o lagos y hallar fugas en la producción de combustibles son solo algunas de sus aplicaciones.    La tecnología de estas aeronaves no tripuladas ha abierto un melón que hasta ahora solo estaba al alcance de muy pocos, ya que filmar el mundo a vista de pájaro estaba reservado solo para aquellos que tuviesen un gran presupuesto o, directamente, un helicóptero. Hoy, con la llegada del dron comercial (más pequeño, barato y eficiente), cualquier persona tiene al alcance de sus manos grabar durante unos minutos desde las alturas, como si de un ave se tratase y sin la necesidad de grandes desembolsos.     Pero este significativo avance, además de cautivar a curiosos y entusiastas, ha ocasionado toda una revolución en la comunidad científica, donde ha emergido un sinfín de posibles aplicaciones para expandir, desarrollar y afinar todo tipo de investigaciones. No en vano, a día de hoy los drones pueden ir equipados para todo tipo de misión: dotados de cámaras digitales para identificar plantas, animales y superficies; con cámaras térmicas para detectar el calor de seres vivos; con un instrumento de imagen hiperespectral, para poder interpretar una gama más amplia de longitudes de onda que la del ojo humano o con un dispositivo LIDAR (Light Detection and Ranging), que mide la distancia y la altura de un objeto a través de un sensor láser y que se utiliza para crear mapas interdimensionales. Incluso tecnología inalámbrica para poder ver a través de las paredes.       Poder acceder a ángulos y zonas dónde el hombre no puede llegar con facilidad ha sido de gran ayuda para ciertos sectores industriales, consiguiendo disminuir los riegos, los costes y los tiempos. En el mundo de la ingeniería, por ejemplo, los drones están siendo utilizados tanto para poder vigilar y mantener un control de grandes estructuras como puentes o tuberías como para identificar fugas de metano en la industria del petróleo del gas o poder supervisar las instalaciones de plantas eólica y solares. Tediosos trabajos que antes requerían de muchos medios y de peligros añadidos para los empleados.        Pero el verdadero alcance de los drones reside en que está permitiendo abrir nuevas vías de investigación que hasta el momento estaban inexploradas. El profesor Christopher Zappa, por ejemplo, lleva años estudiando la física de los océanos y el clima en el Ártico y fue de los primeros científicos en interesarse por incluir aviones no tripulados para sus investigaciones. Gracias a los drones, Zappa está consiguiendo analizar con éxito el espesor del hielo marino con infrarrojos tecnología de imagen hiperespectral.";
    c6.image=[UIImage imageNamed:@"drones.png"];
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listComp addObject:c6];
    
    ComponentsObject *c7=[[ComponentsObject alloc] init];
    c7.name=@"Redes sociales";
    c7.details=@"En un contexto en que no existe poder que no puedan zarandear y tumbar los grupos humanos, cuando cada persona es más responsable y capaz que nunca, la comunicación adquiere una importancia clave en la gestión de las compañías. Particularmente la comunicación interna.      Es así porque, para las empresas, la consolidación de una marca se vuelve cuestión de supervivencia. Y este ideal es imposible sin la adhesión, sin reservas, de cada uno de los empleados, de cualquier nivel, que participan en el proyecto empresarial. Es una adhesión emocional, vivencial, reforzada por la simbología en la comunicación.       El nuevo paradigma, además, reclama un modelo nuevo de líderes, jefes imperfectos pero conectados, que se mueven por el imperativo de la escucha.       Las redes sociales son la herramienta clave en este escenario y un arma irrenunciable si las firmas quieren mantenerse… Porque esa continuidad, hoy, pasa por reclutar a cómplices apasionados.";
    c7.image=[UIImage imageNamed:@"redessociales.jpg"];
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listComp addObject:c7];
    [self.tblMain reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _listComp.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
    //return 64	;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellComponents *cell = (cellComponents *)[tableView dequeueReusableCellWithIdentifier:@"cellComponents"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellComponents" bundle:nil] forCellReuseIdentifier:@"cellComponents"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellComponents"];
    }
    //Fill cell with info from arrays
    ComponentsObject *comp = [_listComp objectAtIndex:indexPath.row];
    
    cell.lblName.text = comp.name;
    if(comp.image != nil)
        cell.imageCell.image=comp.image;
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    idx=(int)indexPath.row;
    //NSLog(@"==>didSelectRowAtIndexPath %li",(long)indexPath.row);

    [self performSegueWithIdentifier:@"segueComponents" sender:self];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //NSLog(@"_EDGE_ prepareForSegue... ");
    ComponentsDetails *cd = [segue destinationViewController];
    ComponentsObject *comp = [_listComp objectAtIndex:idx];
    
    cd.componentsObject=comp;
    
    
}

@end


@implementation ComponentsObject

@end
