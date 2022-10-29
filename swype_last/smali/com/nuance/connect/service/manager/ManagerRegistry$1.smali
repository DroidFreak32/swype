.class Lcom/nuance/connect/service/manager/ManagerRegistry$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/connect/service/manager/interfaces/Manager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry$1;->this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/connect/service/manager/interfaces/Manager;Lcom/nuance/connect/service/manager/interfaces/Manager;)I
    .registers 5

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependentCount()I

    move-result v0

    invoke-interface {p2}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependentCount()I

    move-result v1

    if-ne v0, v1, :cond_1f

    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_1f
    invoke-interface {p1}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependentCount()I

    move-result v0

    invoke-interface {p2}, Lcom/nuance/connect/service/manager/interfaces/Manager;->getDependentCount()I

    move-result v1

    if-le v0, v1, :cond_2b

    const/4 v0, -0x1

    goto :goto_7

    :cond_2b
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/nuance/connect/service/manager/interfaces/Manager;

    check-cast p2, Lcom/nuance/connect/service/manager/interfaces/Manager;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/service/manager/ManagerRegistry$1;->compare(Lcom/nuance/connect/service/manager/interfaces/Manager;Lcom/nuance/connect/service/manager/interfaces/Manager;)I

    move-result v0

    return v0
.end method
