.class public abstract Lcom/fasterxml/jackson/core/JsonStreamContext;
.super Ljava/lang/Object;
.source "JsonStreamContext.java"


# instance fields
.field public _index:I

.field public _type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentIndex()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    goto :goto_5
.end method

.method public final getTypeDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_16

    .line 97
    const-string/jumbo v0, "?"

    :goto_8
    return-object v0

    .line 93
    :pswitch_9
    const-string/jumbo v0, "ROOT"

    goto :goto_8

    .line 94
    :pswitch_d
    const-string/jumbo v0, "ARRAY"

    goto :goto_8

    .line 95
    :pswitch_11
    const-string/jumbo v0, "OBJECT"

    goto :goto_8

    .line 92
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public final inArray()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 71
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final inObject()Z
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
