.class public Lcom/nuance/android/util/XmlResourceParserWrapper;
.super Ljava/lang/Object;
.source "XmlResourceParserWrapper.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# instance fields
.field private final target:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .param p1, "target"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    .line 17
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 304
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v0

    return v0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeFloatValue(IF)F

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getAttributeIntValue(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNameResource(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeNameResource(I)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getClassAttribute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getIdAttribute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getIdAttributeResourceValue(I)I

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getNamespaceCount(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getStyleAttribute()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 1
    .param p1, "holderForStartAndLength"    # [I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->getTextCharacters([I)[C

    move-result-object v0

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->isAttributeDefault(I)Z

    move-result v0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->isEmptyElementTag()Z

    move-result v0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextTag()I

    move-result v0

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->setFeature(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1}, Landroid/content/res/XmlResourceParser;->setInput(Ljava/io/Reader;)V

    .line 195
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nuance/android/util/XmlResourceParserWrapper;->target:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0, p1, p2}, Landroid/content/res/XmlResourceParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-void
.end method
