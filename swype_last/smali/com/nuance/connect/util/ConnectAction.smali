.class public Lcom/nuance/connect/util/ConnectAction;
.super Ljava/lang/Object;


# instance fields
.field private extras:Landroid/os/Bundle;

.field private filter:Lcom/nuance/connect/util/ActionFilter;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/util/ActionFilter;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/util/ConnectAction;->filter:Lcom/nuance/connect/util/ActionFilter;

    iput-object p2, p0, Lcom/nuance/connect/util/ConnectAction;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectAction;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFilter()Lcom/nuance/connect/util/ActionFilter;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/ConnectAction;->filter:Lcom/nuance/connect/util/ActionFilter;

    return-object v0
.end method
