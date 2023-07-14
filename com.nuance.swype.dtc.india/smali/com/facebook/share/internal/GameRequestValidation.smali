.class public Lcom/facebook/share/internal/GameRequestValidation;
.super Ljava/lang/Object;
.source "GameRequestValidation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Lcom/facebook/share/model/GameRequestContent;)V
    .locals 6
    .param p0, "content"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "message"

    invoke-static {v1, v4}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v4

    sget-object v5, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v4

    sget-object v5, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-ne v4, v5, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Object id should be provided if and only if action type is send or askfor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v1, v3

    .line 37
    goto :goto_0

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    .local v0, "mutex":I
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 55
    :cond_6
    if-le v0, v2, :cond_7

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Parameters to, filters and suggestions are mutually exclusive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_7
    return-void
.end method
