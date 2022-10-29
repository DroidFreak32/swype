.class final Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;
.super Ljava/lang/Object;
.source "ThemeLayoutInflateFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field final mThemeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-string/jumbo v0, "ThemeLayoutInflateFactory"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->mThemeItems:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private static parseViewAttrSet(Landroid/util/AttributeSet;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AttributeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/plugin/ThemeAttrAssociation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "paramArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/plugin/ThemeAttrAssociation;>;"
    if-nez p1, :cond_3

    .line 77
    :cond_2
    return-void

    .line 50
    :cond_3
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v5

    .line 51
    .local v5, "localResMgr":Lcom/nuance/swype/plugin/MainApkResourceBroker;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_8
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 53
    invoke-interface {p0, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "attrResIdStr":Ljava/lang/String;
    invoke-interface {p0, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "attrName":Ljava/lang/String;
    const-string/jumbo v6, "?"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 59
    const/4 v6, 0x1

    :try_start_20
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "attrResId":I
    iget-object v6, v5, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mThemeStyleableAttrResIds:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 61
    iget-object v6, v5, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "attrFullName":Ljava/lang/String;
    new-instance v6, Lcom/nuance/swype/plugin/ThemeAttrAssociation;

    invoke-direct {v6, v1, v0}, Lcom/nuance/swype/plugin/ThemeAttrAssociation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_46} :catch_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_46} :catch_53

    .line 51
    .end local v0    # "attrFullName":Ljava/lang/String;
    .end local v2    # "attrResId":I
    :cond_46
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 69
    :catch_49
    move-exception v6

    sget-object v6, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v7, "parse attributeValueReferenceId Exception"

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_46

    .line 73
    :catch_53
    move-exception v6

    sget-object v6, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v7, "parse attributeValueReferenceName Exception"

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_46
.end method


# virtual methods
.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8
    .param p1, "widgetType"    # Ljava/lang/String;
    .param p2, "paramContext"    # Landroid/content/Context;
    .param p3, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "id"

    invoke-interface {p3, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 29
    new-instance v1, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;

    invoke-direct {v1}, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;-><init>()V

    .line 31
    .local v1, "newItem":Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;->id:I

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;->mThemeAttrs:Ljava/util/ArrayList;

    .line 33
    iget-object v2, v1, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;->mThemeAttrs:Ljava/util/ArrayList;

    invoke-static {p3, v2}, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->parseViewAttrSet(Landroid/util/AttributeSet;Ljava/util/ArrayList;)V

    .line 34
    iget-object v2, v1, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;->mThemeAttrs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 35
    iget-object v2, p0, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->mThemeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v1    # "newItem":Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;
    :cond_35
    const/4 v2, 0x0

    return-object v2
.end method
