.class Lcom/nuance/connect/internal/CategoryServiceInternal$8;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$8;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "USER_ALLOW_USAGE_COLLECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$8;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    const/4 v1, 0x0

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1700(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)V

    :cond_1f
    return-void
.end method
