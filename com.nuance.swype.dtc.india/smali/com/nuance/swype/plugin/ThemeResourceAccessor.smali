.class public final Lcom/nuance/swype/plugin/ThemeResourceAccessor;
.super Ljava/lang/Object;
.source "ThemeResourceAccessor.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mApkPkgName:Ljava/lang/String;

.field final mAttrName2Values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdToIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;

.field private final mThemeAttrValues:Landroid/content/res/TypedArray;

.field private mThemeAttrs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "ThemeResourceAccessor"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;[ILjava/lang/String;I)V
    .locals 4
    .param p1, "currentContextTheme"    # Landroid/content/res/Resources$Theme;
    .param p2, "currentContextResources"    # Landroid/content/res/Resources;
    .param p3, "themeTemplateAttrs"    # [I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mAttrName2Values:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mTheme:Landroid/content/res/Resources$Theme;

    .line 36
    iput-object p2, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    .line 37
    iput-object p3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrs:[I

    .line 38
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrs:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mIdToIndexMap:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mIdToIndexMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrs:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iput-object p4, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mApkPkgName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, p5, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrValues:Landroid/content/res/TypedArray;

    .line 52
    return-void
.end method

.method private addAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 121
    sget-object v0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Adding "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " with value: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mAttrName2Values:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method static getBoolean(Landroid/util/TypedValue;)I
    .locals 3
    .param p0, "paramTypedValue"    # Landroid/util/TypedValue;

    .prologue
    const/4 v0, -0x1

    .line 201
    if-nez p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 207
    iget v0, p0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getText(Landroid/util/TypedValue;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "paramTypedValue"    # Landroid/util/TypedValue;

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final getAttrTypedValue(IZ)Landroid/util/TypedValue;
    .locals 5
    .param p1, "paramInt"    # I
    .param p2, "bReturnNew"    # Z

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrValues:Landroid/content/res/TypedArray;

    if-eqz v3, :cond_4

    .line 1091
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mIdToIndexMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1092
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mIdToIndexMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrs:[I

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 87
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-object v1

    .line 1094
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 72
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrValues:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    if-eqz p2, :cond_3

    .line 76
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 77
    .local v1, "localNewTypedValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrValues:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    goto :goto_1

    .line 80
    .end local v1    # "localNewTypedValue":Landroid/util/TypedValue;
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrValues:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    :cond_4
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 84
    .local v2, "localTypedValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mTheme:Landroid/content/res/Resources$Theme;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 85
    goto :goto_1
.end method

.method final getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;
    .locals 8
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mAttrName2Values:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "localInteger":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 130
    const/16 v3, 0xd

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android:attr/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "i":I
    if-nez v0, :cond_2

    .line 145
    :goto_1
    return-object v2

    .line 136
    .end local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "attr"

    iget-object v6, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mApkPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 145
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0, v0, v7}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v2

    goto :goto_1
.end method

.method final getColor(Landroid/util/TypedValue;)I
    .locals 2
    .param p1, "paramTypedValue"    # Landroid/util/TypedValue;

    .prologue
    const/4 v0, -0x1

    .line 219
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return v0

    .line 222
    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->type:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 227
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 232
    :sswitch_1
    iget v0, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x1e -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method final getColorStateList(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "paramTypedValue"    # Landroid/util/TypedValue;

    .prologue
    const/4 v0, 0x0

    .line 269
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->type:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 277
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 282
    :sswitch_1
    iget v0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x1e -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method final getDimension(Landroid/util/TypedValue;)F
    .locals 5
    .param p1, "paramTypedValue"    # Landroid/util/TypedValue;

    .prologue
    const/4 v4, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    .line 174
    :cond_2
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-ne v1, v4, :cond_0

    .line 1184
    if-eqz p1, :cond_0

    .line 1187
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-ne v1, v4, :cond_0

    .line 1189
    invoke-virtual {p1, v3, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_0
.end method

.method final getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "paramTypedValue"    # Landroid/util/TypedValue;

    .prologue
    const/4 v0, 0x0

    .line 244
    if-nez p1, :cond_0

    .line 259
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->type:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 252
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 257
    :sswitch_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x1e -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method final obtainAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;
    .locals 7
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mAttrName2Values:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "localInteger":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 102
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android:attr/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 110
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "i":I
    if-nez v0, :cond_2

    .line 117
    :goto_1
    return-object v2

    .line 108
    .end local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "attr"

    iget-object v6, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mApkPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 117
    .restart local v0    # "i":I
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v2

    goto :goto_1
.end method

.method final release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 289
    sget-object v0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "clearing mAttrName2Values"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mAttrName2Values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 291
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrValues:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    iput-object v4, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mThemeAttrs:[I

    .line 293
    iput-object v4, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mIdToIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 295
    return-void
.end method
