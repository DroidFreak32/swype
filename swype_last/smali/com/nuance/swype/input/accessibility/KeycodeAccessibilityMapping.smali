.class public Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;
.super Ljava/lang/Object;
.source "KeycodeAccessibilityMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    }
.end annotation


# static fields
.field private static final MAPPING_TAG_NAME:Ljava/lang/String; = "Mapping"


# instance fields
.field private mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->mapping:Landroid/util/SparseArray;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->parseXMLResource(Landroid/content/Context;I)V

    .line 23
    return-void
.end method

.method private parseXMLResource(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_7} :catch_40
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_48

    move-result-object v2

    .line 33
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 34
    .local v0, "eventType":I
    :goto_c
    const/4 v4, 0x1

    if-eq v0, v4, :cond_42

    .line 35
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "tag":Ljava/lang/String;
    packed-switch v0, :pswitch_data_4a

    .line 47
    :cond_16
    :goto_16
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 48
    goto :goto_c

    .line 38
    :pswitch_1b
    const-string/jumbo v4, "Mapping"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 39
    new-instance v1, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;

    invoke-direct {v1, p1, v2}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 41
    .local v1, "mp":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->hasCode()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 42
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_39

    goto :goto_16

    .line 50
    .end local v0    # "eventType":I
    .end local v1    # "mp":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    .end local v3    # "tag":Ljava/lang/String;
    :catchall_39
    move-exception v4

    if-eqz v2, :cond_3f

    .line 51
    :try_start_3c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3f
    throw v4

    .line 56
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_40
    move-exception v4

    :cond_41
    :goto_41
    return-void

    .line 50
    .restart local v0    # "eventType":I
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_42
    if-eqz v2, :cond_41

    .line 51
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_47} :catch_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_47} :catch_48

    goto :goto_41

    .line 56
    .end local v0    # "eventType":I
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_48
    move-exception v4

    goto :goto_41

    .line 36
    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public getAccessibilityMapping(I)Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    .registers 3
    .param p1, "keycode"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;

    return-object v0
.end method
