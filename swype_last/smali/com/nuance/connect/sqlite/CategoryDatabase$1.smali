.class Lcom/nuance/connect/sqlite/CategoryDatabase$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/CategoryDatabase;

.field final synthetic val$property:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/CategoryDatabase;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$1;->this$0:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iput-object p2, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$1;->val$property:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$1;->val$property:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
