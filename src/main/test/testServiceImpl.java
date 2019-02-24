/*
@RunWith( SpringRunner.class )
@SpringBootTest( classes = Main.class )
@AutoConfigureMockMvc
public class testServiceImpl {
    private Taxonomy taxonomy = new Taxonomy("ad", 1L);
    private static List <Ingredient> ingredients = Arrays.asList(new Ingredient("vfd", "gf",1L));
    private static List <RecepiStep> instructions = Arrays.asList(new RecepiStep("ds", "fd", 1L));
    private static List <Taxonomy> tags = Arrays.asList(new Taxonomy("ad", 1L));
    private static Date date = new Date();
    private static Recipe recipe = new Recipe(1L, "title", "String announce", date, new Person("fgd", 1L), ingredients, instructions, tags, new Comment("ds", 1L), 23, 23, new Rate("sdf", 1L));
    //private static RecipeWeb recipeWeb = new RecipeWeb("title", "String announce", new Person("fgd", 1L), ingredients, instructions, tags, 23, 23, new Rate("sdf", 1L));
    private static List <Recipe> list = Arrays.asList(recipe);
    @Autowired
    private MockMvc mockMvc;

    @Autowired
    RecipeRepository recipeRepository;

    @Autowired
    private RecipeServiceImpl recipeService;
    @Autowired
    RecipeController recipeController;

    @Test
    public void testServiceGetAll() {
        List <RecipeWebOutput> listService = recipeController.getAllRecipe();
        List <Recipe> listrepo = recipeRepository.findAll();
        Assert.assertEquals(listService.size(), listrepo.size());
        Assert.assertEquals(listrepo, listService);


    }

    @Test
    public void getRecipeByIdTest() throws Exception {
        Recipe recipe = recipeRepository.getOne(1L);
        mockMvc.perform(get("/recipes/{id}", 1L).contentType(MediaType.APPLICATION_JSON)).andDo(print()).
                andExpect(status().isOk());
        Assertions.assertEquals(recipeService.getRecipeById(1L), recipe);


    }
}
*/