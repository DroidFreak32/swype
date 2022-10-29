.class public Lcom/nuance/connect/util/ActionFilter;
.super Ljava/lang/Object;


# instance fields
.field private action:Ljava/lang/String;

.field private oneShot:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/util/ActionFilter;->action:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/util/ActionFilter;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isOneShot()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/util/ActionFilter;->oneShot:Z

    return v0
.end method

.method public matches(Lcom/nuance/connect/util/ActionFilter;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    new-instance p1, Lcom/nuance/connect/util/ActionFilter;

    invoke-direct {p1, v0, v0}, Lcom/nuance/connect/util/ActionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/nuance/connect/util/ActionFilter;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/util/ActionFilter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/ActionFilter;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->action:Ljava/lang/String;

    if-nez v0, :cond_6

    if-eqz p1, :cond_12

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->action:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->action:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_12
    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->type:Ljava/lang/String;

    if-nez v0, :cond_18

    if-eqz p2, :cond_24

    :cond_18
    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->type:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/connect/util/ActionFilter;->type:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public oneShot()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/ActionFilter;->oneShot:Z

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/util/ActionFilter;->action:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/util/ActionFilter;->type:Ljava/lang/String;

    return-void
.end method
