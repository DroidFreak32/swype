.class public final Lcom/nuance/swype/plugin/ThemeLoader;
.super Ljava/lang/Object;
.source "ThemeLoader.java"


# static fields
.field public static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static sThemeLoader:Lcom/nuance/swype/plugin/ThemeLoader;


# instance fields
.field public bThemeApkLoaded:Z

.field private defStyle:I

.field private final mParsers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;",
            ">;"
        }
    .end annotation
.end field

.field private themeTemplateAttrs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "ThemeLoader"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/plugin/ThemeLoader;->mParsers:Ljava/util/Stack;

    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/plugin/ThemeLoader;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/nuance/swype/plugin/ThemeLoader;->sThemeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-direct {v0}, Lcom/nuance/swype/plugin/ThemeLoader;-><init>()V

    sput-object v0, Lcom/nuance/swype/plugin/ThemeLoader;->sThemeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    .line 47
    :cond_0
    sget-object v0, Lcom/nuance/swype/plugin/ThemeLoader;->sThemeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    return-object v0
.end method

.method public static getResourceName$47921032()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    const-string/jumbo v0, "<release build>"

    return-object v0
.end method

.method public static getThemedBoolean(I)Z
    .locals 5
    .param p0, "attrValueResId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v4

    iget-boolean v4, v4, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v4, :cond_3

    .line 105
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v4

    iget-boolean v4, v4, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v4, :cond_2

    .line 107
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "attrName":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 1196
    invoke-virtual {v4, v0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getBoolean(Landroid/util/TypedValue;)I

    move-result v1

    .line 110
    .local v1, "bVal":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 111
    if-lez v1, :cond_1

    .line 118
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "bVal":I
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "attrName":Ljava/lang/String;
    .restart local v1    # "bVal":I
    :cond_1
    move v2, v3

    .line 111
    goto :goto_0

    .line 114
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "bVal":I
    :cond_2
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 116
    invoke-virtual {v4, p0, v3}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getBoolean(Landroid/util/TypedValue;)I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 118
    goto :goto_0
.end method

.method public static getThemedBoolean(Landroid/util/TypedValue;)Z
    .locals 3
    .param p0, "tVal"    # Landroid/util/TypedValue;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_0

    .line 126
    invoke-static {p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getBoolean(Landroid/util/TypedValue;)I

    move-result v0

    .local v0, "bVal":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 127
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 130
    .end local v0    # "bVal":I
    :cond_0
    return v1
.end method

.method public static getThemedColor(I)I
    .locals 3
    .param p0, "attrValueResId"    # I

    .prologue
    .line 138
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v1, :cond_1

    .line 140
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "attrName":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 1303
    invoke-virtual {v1, v0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    .line 1304
    iget-object v1, v1, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mAttrName2Values:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 2214
    invoke-virtual {v1, v0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColor(Landroid/util/TypedValue;)I

    move-result v1

    .line 152
    .end local v0    # "attrName":Ljava/lang/String;
    :goto_0
    return v1

    .line 148
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColor(Landroid/util/TypedValue;)I

    move-result v1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getThemedColor(Landroid/util/TypedValue;)I
    .locals 3
    .param p0, "tVal"    # Landroid/util/TypedValue;

    .prologue
    const/4 v1, -0x1

    .line 157
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_1

    .line 159
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_0

    .line 163
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColor(Landroid/util/TypedValue;)I

    move-result v0

    .local v0, "colorVal":I
    if-eq v0, v1, :cond_0

    .line 171
    .end local v0    # "colorVal":I
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 169
    invoke-virtual {v1, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColor(Landroid/util/TypedValue;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 171
    goto :goto_0
.end method

.method public static getThemedColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "attrValueResId"    # I

    .prologue
    .line 176
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_1

    .line 178
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_0

    .line 180
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "attrName":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 2264
    invoke-virtual {v2, v0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColorStateList(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 183
    .local v1, "colorVal":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 191
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "colorVal":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1

    .line 187
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColorStateList(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getThemedColorStateList(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "tVal"    # Landroid/util/TypedValue;

    .prologue
    .line 196
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColorStateList(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 202
    .local v0, "colorVal":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 210
    .end local v0    # "colorVal":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 208
    invoke-virtual {v1, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getColorStateList(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getThemedDimension(I)F
    .locals 3
    .param p0, "attrValueResId"    # I

    .prologue
    .line 270
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v1, :cond_1

    .line 272
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "attrName":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 4162
    invoke-virtual {v1, v0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDimension(Landroid/util/TypedValue;)F

    move-result v1

    .line 281
    .end local v0    # "attrName":Ljava/lang/String;
    :goto_0
    return v1

    .line 277
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 279
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDimension(Landroid/util/TypedValue;)F

    move-result v1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getThemedDimension(Landroid/util/TypedValue;)F
    .locals 1
    .param p0, "tVal"    # Landroid/util/TypedValue;

    .prologue
    .line 285
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDimension(Landroid/util/TypedValue;)F

    move-result v0

    .line 296
    :goto_0
    return v0

    .line 292
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 294
    invoke-virtual {v0, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDimension(Landroid/util/TypedValue;)F

    move-result v0

    goto :goto_0

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getThemedDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "attrValueResId"    # I

    .prologue
    .line 214
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_1

    .line 216
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_0

    .line 218
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "attrName":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 3239
    invoke-virtual {v2, v0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 221
    .local v1, "dVal":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 229
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "dVal":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 225
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 227
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getThemedDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "tVal"    # Landroid/util/TypedValue;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    sget-object v2, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ThemeLoader.getThemedDrawable. Resource name is: "

    aput-object v4, v3, v5

    iget v4, p0, Landroid/util/TypedValue;->resourceId:I

    .line 3595
    const-string/jumbo v4, "<release build>"

    .line 233
    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_1

    .line 238
    sget-object v2, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Main broker is initialized."

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 239
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v2, :cond_0

    .line 241
    sget-object v2, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "APK broker is initialized"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 244
    .local v1, "dVal":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 245
    sget-object v2, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "returning from APK. dVal is not null"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 256
    .end local v1    # "dVal":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 249
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v2

    iget-object v0, v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 251
    .local v0, "accessor":Lcom/nuance/swype/plugin/ThemeResourceAccessor;
    sget-object v2, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "got mResourceAccessor from main. Returning drawable"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v0, p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 255
    .end local v0    # "accessor":Lcom/nuance/swype/plugin/ThemeResourceAccessor;
    :cond_1
    sget-object v2, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "returning null"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 256
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getThemedText(Landroid/util/TypedValue;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "tVal"    # Landroid/util/TypedValue;

    .prologue
    .line 260
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-static {p0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getText(Landroid/util/TypedValue;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadDefValXMLAsAttributeSet(Landroid/content/Context;ILjava/lang/String;)Landroid/util/AttributeSet;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlRId"    # I
    .param p2, "Deftag"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 362
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 365
    .local v1, "state":I
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 369
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 370
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 377
    :goto_1
    return-object v2

    .line 367
    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 375
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 377
    const/4 v2, 0x0

    goto :goto_1

    .line 367
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static obtainTypedValuesFromThemeApk(Landroid/util/SparseIntArray;Landroid/util/AttributeSet;Landroid/util/SparseArray;)V
    .locals 16
    .param p0, "attrsMap"    # Landroid/util/SparseIntArray;
    .param p1, "attrSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/AttributeSet;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/TypedValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "typedValsInApk":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/TypedValue;>;"
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    .line 387
    .local v7, "count":I
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v9

    .line 388
    .local v9, "localResMgr":Lcom/nuance/swype/plugin/MainApkResourceBroker;
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v11

    iget-object v1, v11, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 389
    .local v1, "accessor":Lcom/nuance/swype/plugin/ThemeResourceAccessor;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-eqz v11, :cond_2

    .line 403
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v3

    .line 404
    .local v3, "attrRIdInSet":I
    sget-object v11, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "checking:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 405
    const/4 v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 406
    .local v6, "attr_index":I
    if-ltz v6, :cond_0

    .line 407
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 409
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "attrValueIdStr":Ljava/lang/String;
    const-string/jumbo v11, "?"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 414
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 415
    .local v4, "attrResId":I
    iget-object v11, v9, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mThemeStyleableAttrResIds:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 420
    if-ltz v6, :cond_1

    .line 421
    iget-object v11, v9, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "attrFullName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->obtainAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v10

    .line 423
    .local v10, "tValFoundInApk":Landroid/util/TypedValue;
    if-eqz v10, :cond_1

    .line 424
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    .end local v2    # "attrFullName":Ljava/lang/String;
    .end local v4    # "attrResId":I
    .end local v10    # "tValFoundInApk":Landroid/util/TypedValue;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 431
    :catch_0
    move-exception v11

    sget-object v11, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v12, "LayoutInflaterFactory: parse attributeValueReferenceId Exception"

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 435
    :catch_1
    move-exception v11

    sget-object v11, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v12, "LayoutInflaterFactory: parse attributeValueReferenceName Exception"

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 439
    .end local v3    # "attrRIdInSet":I
    .end local v5    # "attrValueIdStr":Ljava/lang/String;
    .end local v6    # "attr_index":I
    :cond_2
    return-void
.end method

.method public static openRawResourceInThemeApk(I)Ljava/io/InputStream;
    .locals 1
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 506
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 6055
    iget-object v0, v0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final applyTheme(Landroid/view/View;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    sget-object v3, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ThemeLoader.applyTheme(), Applying theme to view: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 60
    iget-boolean v3, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    if-eqz v3, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "parser":Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeLoader;->mParsers:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    if-eqz v2, :cond_0

    .line 1049
    sget-object v3, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "in applyThemeFromCurrentThemeApk()"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1052
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v3

    iget-boolean v3, v3, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-nez v3, :cond_1

    .line 1053
    sget-object v3, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "apk resource broker not initialized. Returning"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1054
    .end local v2    # "parser":Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;
    :cond_0
    :goto_1
    return-void

    .line 64
    .restart local v2    # "parser":Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/util/EmptyStackException;
    sget-object v3, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "applyTheme"

    invoke-interface {v3, v4, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1056
    .end local v1    # "e":Ljava/util/EmptyStackException;
    :cond_1
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 1059
    iget-object v4, v2, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->mLayoutInflateFactory:Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;

    iget-object v4, v4, Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;->mThemeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;

    .line 1061
    iget-object v5, v3, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;->mThemeAttrs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v4

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;

    .line 1063
    sget-object v6, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "Processing "

    aput-object v11, v7, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    aput-object v11, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1064
    iget-object v6, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrStyleableFullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v6

    .line 1065
    if-nez v6, :cond_e

    .line 1066
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v5

    iget-object v7, v5, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 1067
    iget-object v5, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrStyleableFullName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v6

    .line 1068
    sget-object v10, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v12, "attr typed value is: "

    aput-object v12, v11, v5

    const/4 v12, 0x1

    if-nez v6, :cond_2

    const/4 v5, 0x0

    :goto_4
    aput-object v5, v11, v12

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move-object v14, v6

    move-object v6, v7

    move-object v7, v14

    .line 1070
    :goto_5
    sget-object v10, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v12, "tVal null?"

    aput-object v12, v11, v5

    const/4 v12, 0x1

    if-nez v7, :cond_3

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v11, v12

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1071
    if-eqz v7, :cond_b

    .line 1073
    sget-object v5, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "tVal is: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v5, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1074
    iget v5, v3, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser$ThemeStyledItem;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1075
    if-nez v5, :cond_4

    .line 1076
    sget-object v4, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v10, "localView is null"

    aput-object v10, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move-object v5, v6

    .line 1077
    goto/16 :goto_3

    .line 1068
    :cond_2
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    .line 1070
    :cond_3
    const/4 v5, 0x0

    goto :goto_6

    .line 1079
    :cond_4
    sget-object v10, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "Apply theme to:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1081
    const-string/jumbo v10, "background"

    iget-object v11, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1083
    sget-object v4, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Applying background: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v4, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1084
    invoke-virtual {v6, v7}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    goto/16 :goto_3

    .line 1089
    :cond_5
    instance-of v10, v5, Landroid/widget/TextView;

    if-eqz v10, :cond_8

    .line 1091
    const-string/jumbo v10, "textColor"

    iget-object v11, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v4, v5

    .line 1093
    check-cast v4, Landroid/widget/TextView;

    iget v5, v7, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v5, v6

    goto/16 :goto_3

    .line 1098
    :cond_6
    const-string/jumbo v10, "textSize"

    iget-object v11, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1100
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mThemeApkInfo:Lcom/nuance/swype/plugin/ThemeApkInfo;

    iget-object v4, v4, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    .line 1101
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    move-object v5, v6

    goto/16 :goto_3

    .line 1103
    :cond_7
    instance-of v10, v5, Landroid/widget/CompoundButton;

    if-eqz v10, :cond_b

    const-string/jumbo v10, "button"

    iget-object v4, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1105
    invoke-virtual {v6, v7}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1106
    check-cast v5, Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    goto/16 :goto_3

    .line 1110
    :cond_8
    instance-of v10, v5, Landroid/widget/AbsListView;

    if-eqz v10, :cond_a

    .line 1112
    const-string/jumbo v10, "listSelector"

    iget-object v11, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1114
    invoke-virtual {v6, v7}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1115
    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    goto/16 :goto_3

    .line 1117
    :cond_9
    instance-of v10, v5, Landroid/widget/ListView;

    if-eqz v10, :cond_b

    const-string/jumbo v10, "divider"

    iget-object v4, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1119
    invoke-virtual {v6, v7}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1120
    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    goto/16 :goto_3

    .line 1123
    :cond_a
    instance-of v10, v5, Landroid/widget/ImageView;

    if-eqz v10, :cond_b

    const-string/jumbo v10, "src"

    iget-object v4, v4, Lcom/nuance/swype/plugin/ThemeAttrAssociation;->attrName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1125
    invoke-virtual {v6, v7}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1126
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    move-object v5, v6

    .line 1130
    goto/16 :goto_3

    :cond_c
    move-object v4, v5

    .line 1131
    goto/16 :goto_2

    .line 1132
    :cond_d
    invoke-virtual {v2}, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->clear()V

    goto/16 :goto_1

    :cond_e
    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_5
.end method

.method public final buildResourceIdMap(Landroid/util/AttributeSet;Landroid/util/SparseIntArray;)Z
    .locals 11
    .param p1, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .param p2, "paramArrayList"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 461
    if-nez p2, :cond_0

    .line 498
    :goto_0
    return v7

    .line 464
    :cond_0
    iget-boolean v10, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v10

    iget-boolean v10, v10, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-nez v10, :cond_2

    .line 465
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_0

    .line 468
    :cond_2
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v4

    .line 469
    .local v4, "localResMgr":Lcom/nuance/swype/plugin/MainApkResourceBroker;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 471
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "attrResIdStr":Ljava/lang/String;
    const-string/jumbo v7, "?"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 476
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 477
    .local v0, "attrResId":I
    iget-object v7, v4, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mThemeStyleableAttrResIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5074
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v7

    iget-boolean v7, v7, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v7, :cond_4

    .line 5077
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v7

    iget-object v7, v7, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(IZ)Landroid/util/TypedValue;

    move-result-object v5

    .line 479
    .local v5, "t":Landroid/util/TypedValue;
    :goto_2
    if-eqz v5, :cond_3

    .line 480
    iget v2, v5, Landroid/util/TypedValue;->resourceId:I

    .line 5083
    .local v2, "attrThemedValueRId":I
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v7

    iget-boolean v7, v7, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v7, :cond_5

    .line 5085
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v7

    iget-boolean v7, v7, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v7, :cond_5

    .line 5087
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v7

    iget-object v7, v7, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 5090
    if-eqz v7, :cond_5

    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v10

    iget-object v10, v10, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v10, v7}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->getAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 482
    .local v6, "tVal":Landroid/util/TypedValue;
    :goto_3
    if-eqz v6, :cond_3

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_3

    .line 483
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v2, v7}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    .end local v0    # "attrResId":I
    .end local v2    # "attrThemedValueRId":I
    .end local v5    # "t":Landroid/util/TypedValue;
    .end local v6    # "tVal":Landroid/util/TypedValue;
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v0    # "attrResId":I
    :cond_4
    move-object v5, v9

    .line 5079
    goto :goto_2

    .restart local v2    # "attrThemedValueRId":I
    .restart local v5    # "t":Landroid/util/TypedValue;
    :cond_5
    move-object v6, v9

    .line 5095
    goto :goto_3

    .line 490
    .end local v0    # "attrResId":I
    .end local v2    # "attrThemedValueRId":I
    .end local v5    # "t":Landroid/util/TypedValue;
    :catch_0
    move-exception v7

    sget-object v7, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v10, "LayoutInflaterFactory: parse attributeValueReferenceId Exception"

    invoke-interface {v7, v10}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4

    .line 494
    :catch_1
    move-exception v7

    sget-object v7, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v10, "LayoutInflaterFactory: parse attributeValueReferenceName Exception"

    invoke-interface {v7, v10}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4

    .end local v1    # "attrResIdStr":Ljava/lang/String;
    :cond_6
    move v7, v8

    .line 498
    goto/16 :goto_0
.end method

.method public final clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 561
    iget-boolean v0, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v0

    .line 7090
    iget-object v1, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v1}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->release()V

    .line 7091
    iput-object v2, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 7092
    iput-object v2, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mThemeApkInfo:Lcom/nuance/swype/plugin/ThemeApkInfo;

    .line 7093
    iput-boolean v3, v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    .line 8032
    sget-object v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->sThemeApkResBroker:Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    if-eqz v0, :cond_1

    .line 8033
    sput-object v2, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->sThemeApkResBroker:Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    .line 570
    :cond_1
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v0, :cond_2

    .line 571
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v0

    .line 8036
    iget-object v1, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v1}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->release()V

    .line 8037
    iput-object v2, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 8038
    iget-object v1, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mThemeStyleableAttrResIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 8039
    iput-object v2, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    .line 8040
    iput-boolean v3, v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    .line 9029
    sget-object v0, Lcom/nuance/swype/plugin/MainApkResourceBroker;->sLocalResBroker:Lcom/nuance/swype/plugin/MainApkResourceBroker;

    if-eqz v0, :cond_2

    .line 9030
    sput-object v2, Lcom/nuance/swype/plugin/MainApkResourceBroker;->sLocalResBroker:Lcom/nuance/swype/plugin/MainApkResourceBroker;

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeLoader;->mParsers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 577
    iput-boolean v3, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    goto :goto_0
.end method

.method public final init([II)Z
    .locals 1
    .param p1, "themeStyleableAttrs"    # [I
    .param p2, "defStyle"    # I

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    .line 535
    :cond_0
    iput p2, p0, Lcom/nuance/swype/plugin/ThemeLoader;->defStyle:I

    .line 536
    iput-object p1, p0, Lcom/nuance/swype/plugin/ThemeLoader;->themeTemplateAttrs:[I

    .line 538
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final loadThemeApkFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "themedMainContext"    # Landroid/content/Context;
    .param p2, "themeApkPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 543
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    if-nez v0, :cond_4

    .line 6442
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v8

    .line 6443
    iput-object p1, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    .line 6445
    iget-boolean v0, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-nez v0, :cond_2

    .line 6446
    iget-object v1, p0, Lcom/nuance/swype/plugin/ThemeLoader;->themeTemplateAttrs:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget v3, v1, v0

    .line 6447
    iget-object v4, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mThemeStyleableAttrResIds:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6449
    :cond_2
    iget-object v0, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    if-eqz v0, :cond_3

    .line 6450
    iget-object v0, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v0}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->release()V

    .line 6453
    :cond_3
    new-instance v0, Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeLoader;->themeTemplateAttrs:[I

    iget-object v4, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    .line 6454
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/nuance/swype/plugin/ThemeLoader;->defStyle:I

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;[ILjava/lang/String;I)V

    iput-object v0, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 6455
    iput-boolean v9, v8, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    .line 551
    :cond_4
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v7

    .line 552
    .local v7, "themeApkResourceBroker":Lcom/nuance/swype/plugin/ThemeApkResourceBroker;
    invoke-static {p1, p2}, Lcom/nuance/swype/plugin/ThemeApkInfo;->fromStaticApkFile(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/plugin/ThemeApkInfo;

    move-result-object v6

    .line 553
    .local v6, "themeApkInfo":Lcom/nuance/swype/plugin/ThemeApkInfo;
    if-eqz v6, :cond_0

    iget-object v0, v7, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mThemeApkInfo:Lcom/nuance/swype/plugin/ThemeApkInfo;

    invoke-virtual {v6, v0}, Lcom/nuance/swype/plugin/ThemeApkInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-virtual {v7, v6}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->setThemeFromApk(Lcom/nuance/swype/plugin/ThemeApkInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iput-boolean v9, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    goto :goto_0
.end method

.method public final obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainAttrsSet"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I
    .param p6, "defXmlAttr"    # I
    .param p7, "defStyleResTag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v14, 0x0

    .line 304
    .local v14, "typedValsInApk":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/TypedValue;>;"
    invoke-virtual/range {p1 .. p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 306
    .local v13, "taMain":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    if-eqz v15, :cond_5

    .line 307
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v15

    iget-boolean v15, v15, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v15, :cond_5

    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v15

    iget-boolean v15, v15, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v15, :cond_5

    .line 308
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 310
    .local v9, "attrsMap":Landroid/util/SparseIntArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v15, v0

    if-ge v10, v15, :cond_0

    .line 311
    aget v15, p3, v10

    invoke-virtual {v9, v15, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 314
    :cond_0
    new-instance v14, Landroid/util/SparseArray;

    .end local v14    # "typedValsInApk":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/TypedValue;>;"
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 321
    .restart local v14    # "typedValsInApk":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/TypedValue;>;"
    if-eqz p2, :cond_1

    .line 322
    move-object/from16 v0, p2

    invoke-static {v9, v0, v14}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainTypedValuesFromThemeApk(Landroid/util/SparseIntArray;Landroid/util/AttributeSet;Landroid/util/SparseArray;)V

    .line 325
    :cond_1
    if-eqz p4, :cond_2

    .line 326
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1, v15}, Lcom/nuance/swype/plugin/ThemeLoader;->loadDefValXMLAsAttributeSet(Landroid/content/Context;ILjava/lang/String;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 327
    .local v6, "attrSetDefAttr":Landroid/util/AttributeSet;
    invoke-static {v9, v6, v14}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainTypedValuesFromThemeApk(Landroid/util/SparseIntArray;Landroid/util/AttributeSet;Landroid/util/SparseArray;)V

    .line 330
    .end local v6    # "attrSetDefAttr":Landroid/util/AttributeSet;
    :cond_2
    if-eqz p5, :cond_3

    .line 331
    move-object/from16 v0, p1

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->loadDefValXMLAsAttributeSet(Landroid/content/Context;ILjava/lang/String;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 332
    .local v7, "attrSetDefRes":Landroid/util/AttributeSet;
    invoke-static {v9, v7, v14}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainTypedValuesFromThemeApk(Landroid/util/SparseIntArray;Landroid/util/AttributeSet;Landroid/util/SparseArray;)V

    .line 335
    .end local v7    # "attrSetDefRes":Landroid/util/AttributeSet;
    :cond_3
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v11

    .line 336
    .local v11, "localResMgr":Lcom/nuance/swype/plugin/MainApkResourceBroker;
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v15

    iget-object v3, v15, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 338
    .local v3, "accessor":Lcom/nuance/swype/plugin/ThemeResourceAccessor;
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v10, v15, :cond_5

    .line 339
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 340
    .local v5, "attrResId":I
    iget-object v15, v11, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mThemeStyleableAttrResIds:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 345
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 346
    .local v8, "attr_index":I
    if-ltz v8, :cond_4

    .line 347
    iget-object v15, v11, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "attrFullName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->obtainAttrTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v12

    .line 349
    .local v12, "tValFoundInApk":Landroid/util/TypedValue;
    if-eqz v12, :cond_4

    .line 350
    invoke-virtual {v14, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    .end local v4    # "attrFullName":Ljava/lang/String;
    .end local v8    # "attr_index":I
    .end local v12    # "tValFoundInApk":Landroid/util/TypedValue;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 357
    .end local v3    # "accessor":Lcom/nuance/swype/plugin/ThemeResourceAccessor;
    .end local v5    # "attrResId":I
    .end local v9    # "attrsMap":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v11    # "localResMgr":Lcom/nuance/swype/plugin/MainApkResourceBroker;
    :cond_5
    new-instance v15, Lcom/nuance/swype/plugin/TypedArrayWrapper;

    invoke-direct {v15, v13, v14}, Lcom/nuance/swype/plugin/TypedArrayWrapper;-><init>(Landroid/content/res/TypedArray;Landroid/util/SparseArray;)V

    return-object v15
.end method

.method public final setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 51
    iget-boolean v1, p0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;

    invoke-direct {v0}, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;-><init>()V

    .line 1039
    .local v0, "parser":Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;
    invoke-virtual {v0}, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->clear()V

    .line 1040
    iget-object v1, v0, Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;->mLayoutInflateFactory:Lcom/nuance/swype/plugin/ThemeLayoutInflateFactory;

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 54
    iget-object v1, p0, Lcom/nuance/swype/plugin/ThemeLoader;->mParsers:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v0    # "parser":Lcom/nuance/swype/plugin/ThemeLayoutAttributeParser;
    :cond_0
    return-void
.end method
