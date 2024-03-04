.class Lcom/nuance/connect/internal/ConfigServiceInternal$3;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$200(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    return-void
.end method
