.class public Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AbstractCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidCommands"
.end annotation


# instance fields
.field private commands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public getResponses(Ljava/lang/String;)[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public hasName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isExpectedResponse(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getResponses(Ljava/lang/String;)[I

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v3, v2, v0

    if-ne v3, p2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
