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
    .registers 5
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
    .registers 12
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

    if-le v6, v8, :cond_40

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
    :goto_32
    sget-object v6, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    iget-object v9, p0, Lcom/localytics/android/MarketingCondition;->mOpt:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v9}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_8e

    .line 214
    :cond_3f
    :goto_3f
    return v5

    .end local v4    # "result2":I
    :cond_40
    move v4, v7

    .line 176
    goto :goto_32

    .line 181
    .restart local v4    # "result2":I
    :pswitch_42
    if-nez v3, :cond_46

    move v5, v8

    .line 182
    :goto_45
    goto :goto_3f

    :cond_46
    move v5, v7

    .line 181
    goto :goto_45

    .line 184
    :pswitch_48
    if-eqz v3, :cond_4c

    move v5, v8

    .line 185
    :goto_4b
    goto :goto_3f

    :cond_4c
    move v5, v7

    .line 184
    goto :goto_4b

    .line 187
    :pswitch_4e
    if-lez v3, :cond_52

    move v5, v8

    .line 188
    :goto_51
    goto :goto_3f

    :cond_52
    move v5, v7

    .line 187
    goto :goto_51

    .line 190
    :pswitch_54
    if-ltz v3, :cond_58

    move v5, v8

    .line 191
    :goto_57
    goto :goto_3f

    :cond_58
    move v5, v7

    .line 190
    goto :goto_57

    .line 193
    :pswitch_5a
    if-gez v3, :cond_5e

    move v5, v8

    .line 194
    :goto_5d
    goto :goto_3f

    :cond_5e
    move v5, v7

    .line 193
    goto :goto_5d

    .line 196
    :pswitch_60
    if-gtz v3, :cond_64

    move v5, v8

    .line 197
    :goto_63
    goto :goto_3f

    :cond_64
    move v5, v7

    .line 196
    goto :goto_63

    .line 199
    :pswitch_66
    if-ltz v3, :cond_6c

    if-gtz v4, :cond_6c

    move v5, v8

    .line 200
    :goto_6b
    goto :goto_3f

    :cond_6c
    move v5, v7

    .line 199
    goto :goto_6b

    .line 202
    :pswitch_6e
    iget-object v6, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "conditionValue":Ljava/lang/String;
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-nez v6, :cond_74

    .line 206
    const/4 v5, 0x1

    .line 207
    goto :goto_3f

    .line 178
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_48
        :pswitch_6e
        :pswitch_4e
        :pswitch_54
        :pswitch_5a
        :pswitch_60
        :pswitch_66
    .end packed-switch
.end method

.method private isSatisfiedByString(Ljava/lang/String;)Z
    .registers 8
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

    packed-switch v4, :pswitch_data_4a

    .line 163
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByNumber(Ljava/lang/String;)Z

    move-result v2

    .line 166
    :cond_13
    :goto_13
    return v2

    .line 139
    :pswitch_14
    iget-object v4, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    goto :goto_13

    .line 142
    :pswitch_1f
    iget-object v4, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    const/4 v2, 0x1

    .line 143
    :goto_2c
    goto :goto_13

    :cond_2d
    move v2, v3

    .line 142
    goto :goto_2c

    .line 145
    :pswitch_2f
    iget-object v3, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "conditionValue":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 149
    const/4 v2, 0x1

    .line 150
    goto :goto_13

    .line 136
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1f
        :pswitch_2f
    .end packed-switch
.end method

.method private operatorToString(Lcom/localytics/android/MarketingCondition$Opt;)Ljava/lang/String;
    .registers 4
    .param p1, "opt"    # Lcom/localytics/android/MarketingCondition$Opt;

    .prologue
    .line 220
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    invoke-virtual {p1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 240
    const-string/jumbo v0, "INVALID OPERATOR"

    :goto_e
    return-object v0

    .line 223
    :pswitch_f
    const-string/jumbo v0, "is equal to"

    goto :goto_e

    .line 225
    :pswitch_13
    const-string/jumbo v0, "not equal to"

    goto :goto_e

    .line 227
    :pswitch_17
    const-string/jumbo v0, "is greater than"

    goto :goto_e

    .line 229
    :pswitch_1b
    const-string/jumbo v0, "is greater than or equal to"

    goto :goto_e

    .line 231
    :pswitch_1f
    const-string/jumbo v0, "is less than"

    goto :goto_e

    .line 233
    :pswitch_23
    const-string/jumbo v0, "is less than or equal to"

    goto :goto_e

    .line 235
    :pswitch_27
    const-string/jumbo v0, "is in between values"

    goto :goto_e

    .line 237
    :pswitch_2b
    const-string/jumbo v0, "is a member of the list"

    goto :goto_e

    .line 220
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_f
        :pswitch_13
        :pswitch_2b
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method private stringToOperator(Ljava/lang/String;)Lcom/localytics/android/MarketingCondition$Opt;
    .registers 3
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "eq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    .line 78
    :goto_b
    return-object v0

    .line 43
    :cond_c
    const-string/jumbo v0, "neq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 45
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->NOT_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b

    .line 48
    :cond_18
    const-string/jumbo v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 50
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b

    .line 53
    :cond_24
    const-string/jumbo v0, "gte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 55
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THEN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b

    .line 58
    :cond_30
    const-string/jumbo v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 60
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b

    .line 63
    :cond_3c
    const-string/jumbo v0, "lte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 65
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b

    .line 68
    :cond_48
    const-string/jumbo v0, "btw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 70
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->BETWEEN:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b

    .line 73
    :cond_54
    const-string/jumbo v0, "in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 75
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->IN_LIST:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b

    .line 78
    :cond_60
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->INVALID:Lcom/localytics/android/MarketingCondition$Opt;

    goto :goto_b
.end method


# virtual methods
.method final isSatisfiedByAttributes(Ljava/util/Map;)Z
    .registers 8
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
    if-nez p1, :cond_6

    move v1, v2

    .line 129
    :goto_5
    return v1

    .line 100
    :cond_6
    iget-object v3, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "attributeValue":Ljava/lang/Object;
    if-nez v0, :cond_2e

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
    :cond_2e
    if-nez v0, :cond_42

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
    goto :goto_5

    .line 115
    :cond_42
    const/4 v1, 0x0

    .line 116
    .local v1, "satisfied":Z
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 118
    check-cast v0, Ljava/lang/String;

    .end local v0    # "attributeValue":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    .line 120
    .restart local v0    # "attributeValue":Ljava/lang/Object;
    :cond_4e
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_59

    .line 122
    check-cast v0, Ljava/lang/String;

    .end local v0    # "attributeValue":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    .line 126
    .restart local v0    # "attributeValue":Ljava/lang/Object;
    :cond_59
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

    goto :goto_5
.end method

.method final setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/localytics/android/MarketingCondition;->mPkgName:Ljava/lang/String;

    .line 84
    return-void
.end method
