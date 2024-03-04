.class Lcom/nuance/connect/internal/ConfigServiceInternal$2;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;Z)V

    goto :goto_0
.end method
