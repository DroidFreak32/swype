.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field final _length:I

.field protected final _name:Lcom/fasterxml/jackson/core/sym/Name;

.field protected final _next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
    .registers 4
    .param p1, "name"    # Lcom/fasterxml/jackson/core/sym/Name;
    .param p2, "next"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .prologue
    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1166
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1167
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    .line 1168
    return-void

    .line 1167
    :cond_d
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public final find(III)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7
    .param p1, "hash"    # I
    .param p2, "firstQuad"    # I
    .param p3, "secondQuad"    # I

    .prologue
    .line 1174
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_13

    .line 1175
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1176
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1187
    :cond_12
    :goto_12
    return-object v1

    .line 1179
    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_15
    if-eqz v0, :cond_28

    .line 1180
    iget-object v1, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1181
    .local v1, "currName":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 1182
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1179
    :cond_25
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_15

    .line 1187
    .end local v1    # "currName":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_28
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public final find(I[II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7
    .param p1, "hash"    # I
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 1192
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_13

    .line 1193
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1194
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1205
    :cond_12
    :goto_12
    return-object v1

    .line 1197
    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_15
    if-eqz v0, :cond_28

    .line 1198
    iget-object v1, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1199
    .local v1, "currName":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 1200
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1197
    :cond_25
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_15

    .line 1205
    .end local v1    # "currName":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_28
    const/4 v1, 0x0

    goto :goto_12
.end method
