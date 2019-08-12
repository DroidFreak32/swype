.class Lcom/nuance/connect/store/SQLiteDataStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/store/SQLiteDataStore;

.field final synthetic val$encodedValue:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/connect/store/SQLiteDataStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->this$0:Lcom/nuance/connect/store/SQLiteDataStore;

    iput-object p2, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->val$encodedValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->this$0:Lcom/nuance/connect/store/SQLiteDataStore;

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore$1;->val$encodedValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/store/SQLiteDataStore;->access$100(Lcom/nuance/connect/store/SQLiteDataStore;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
