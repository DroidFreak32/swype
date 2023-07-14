.class final Lcom/localytics/android/MarketingCondition;
.super Ljava/lang/Object;
.source "MarketingCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingCondition$1;,
        Lcom/localytics/android/MarketingCondition$Opt;
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mOpt:Lcom/localytics/android/MarketingCondition$Opt;

.field private mPkgName:Ljava/lang/String;

.field private final mValues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "values":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p2}, Lcom/localytics/android/MarketingCondition;->stringToOperator(Ljava/lang/String;)Lcom/localytics/android/MarketingCondition$Opt;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/MarketingCondition;->mOpt:Lcom/localytics/android/MarketingCondition$Opt;

    .line 33
    iput-object p3, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    .line 34
    return-void
.end method

.method private isSatisfiedByNumber(Ljava/lang/String;)Z
    .locals 10
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    const/4 v5, 0x0

    .line 174
    .local v5, "satisfied":Z
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "attribute":Ljava/math/BigDecimal;
    new-instance v9, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    .line 176
    .local v3, "result1":I
    iget-object v6, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-le v6, v8, :cond_1

    new-instance v9, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    .line 178
    .local v4, "result2":I
    :goto_0
    sget-object v6, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    iget-object v9, p0, Lcom/localytics/android/MarketingCondition;->mOpt:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v9}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_0

    .line 214
    :cond_0
    :goto_1
    return v5

    .end local v4    # "result2":I
    :cond_1
    move v4, v7

    .line 176
    goto :goto_0

    .line 181
    .restart local v4    # "result2":I
    :pswitch_0
    if-nez v3, :cond_2

    move v5, v8

    .line 182
    :goto_2
    goto :goto_1

    :cond_2
    move v5, v7

    .line 181
    goto :goto_2

    .line 184
    :pswitch_1
    if-eqz v3, :cond_3

    move v5, v8

    .line 185
    :goto_3
    goto :goto_1

    :cond_3
    move v5, v7

    .line 184
    goto :goto_3

    .line 187
    :pswitch_2
    if-lez v3, :cond_4

    move v5, v8

    .line 188
    :goto_4
    goto :goto_1

    :cond_4
    move v5, v7

    .line 187
    goto :goto_4

    .line 190
    :pswitch_3
    if-ltz v3, :cond_5

    move v5, v8

    .line 191
    :goto_5
    goto :goto_1

    :cond_5
    move v5, v7

    .line 190
    goto :goto_5

    .line 193
    :pswitch_4
    if-gez v3, :cond_6

    move v5, v8

    .line 194
    :goto_6
    goto :goto_1

    :cond_6
    move v5, v7

    .line 193
    goto :goto_6

    .line 196
    :pswitch_5
    if-gtz v3, :cond_7

    move v5, v8

    .line 197
    :goto_7
    goto :goto_1

    :cond_7
    move v5, v7

    .line 196
    goto :goto_7

    .line 199
    :pswitch_6
    if-ltz v3, :cond_8

    if-gtz v4, :cond_8

    move v5, v8

    .line 200
    :goto_8
    goto :goto_1

    :cond_8
    move v5, v7

    .line 199
    goto :goto_8

    .line 202
    :pswitch_7
    iget-object v6, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "conditionValue":Ljava/lang/String;
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-nez v6, :cond_9

    .line 206
    const/4 v5, 0x1

    .line 207
    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isSatisfiedByString(Ljava/lang/String;)Z
    .locals 6
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, "satisfied":Z
    sget-object v4, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    iget-object v5, p0, Lcom/localytics/android/MarketingCondition;->mOpt:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v5}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 163
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByNumber(Ljava/lang/String;)Z

    move-result v2

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 139
    :pswitch_0
    iget-object v4, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v4, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 143
    :goto_1
    goto :goto_0

    :cond_1
    move v2, v3

    .line 142
    goto :goto_1

    .line 145
    :pswitch_2
    iget-object v3, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "conditionValue":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    const/4 v2, 0x1

    .line 150
    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private operatorToString(Lcom/localytics/android/MarketingCondition$Opt;)Ljava/lang/String;
    .locals 2
    .param p1, "opt"    # Lcom/localytics/android/MarketingCondition$Opt;

    .prologue
    .line 220
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    invoke-virtual {p1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 240
    const-string/jumbo v0, "INVALID OPERATOR"

    :goto_0
    return-object v0

    .line 223
    :pswitch_0
    const-string/jumbo v0, "is equal to"

    goto :goto_0

    .line 225
    :pswitch_1
    const-string/jumbo v0, "not equal to"

    goto :goto_0

    .line 227
    :pswitch_2
    const-string/jumbo v0, "is greater than"

    goto :goto_0

    .line 229
    :pswitch_3
    const-string/jumbo v0, "is greater than or equal to"

    goto :goto_0

    .line 231
    :pswitch_4
    const-string/jumbo v0, "is less than"

    goto :goto_0

    .line 233
    :pswitch_5
    const-string/jumbo v0, "is less than or equal to"

    goto :goto_0

    .line 235
    :pswitch_6
    const-string/jumbo v0, "is in between values"

    goto :goto_0

    .line 237
    :pswitch_7
    const-string/jumbo v0, "is a member of the list"

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private stringToOperator(Ljava/lang/String;)Lcom/localytics/android/MarketingCondition$Opt;
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "eq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    .line 78
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-string/jumbo v0, "neq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->NOT_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v0, "gte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THEN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0

    .line 58
    :cond_3
    const-string/jumbo v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0

    .line 63
    :cond_4
    const-string/jumbo v0, "lte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0

    .line 68
    :cond_5
    const-string/jumbo v0, "btw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->BETWEEN:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0

    .line 73
    :cond_6
    const-string/jumbo v0, "in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->IN_LIST:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0

    .line 78
    :cond_7
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->INVALID:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_0
.end method


# virtual methods
.method final isSatisfiedByAttributes(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 94
    if-nez p1, :cond_0

    move v1, v2

    .line 129
    :goto_0
    return v1

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "attributeValue":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/localytics/android/MarketingCondition;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    :cond_1
    if-nez v0, :cond_2

    .line 109
    const-string/jumbo v3, "Could not find the in-app condition %s in the attributes dictionary."

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    move v1, v2

    .line 110
    goto :goto_0

    .line 115
    :cond_2
    const/4 v1, 0x0

    .line 116
    .local v1, "satisfied":Z
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 118
    check-cast v0, Ljava/lang/String;

    .end local v0    # "attributeValue":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 120
    .restart local v0    # "attributeValue":Ljava/lang/Object;
    :cond_3
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 122
    check-cast v0, Ljava/lang/String;

    .end local v0    # "attributeValue":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 126
    .restart local v0    # "attributeValue":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v3, "Invalid value type %s in the attributes dictionary."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method final setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/localytics/android/MarketingCondition;->mPkgName:Ljava/lang/String;

    .line 84
    return-void
.end method
