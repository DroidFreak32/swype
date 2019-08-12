.class public Lcom/nuance/swype/input/tweaks/TapFilter;
.super Ljava/lang/Object;
.source "TapFilter.java"

# interfaces
.implements Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;


# instance fields
.field private final honeycombDoubleTapBlacklist:[Ljava/lang/String;

.field private suppressDoubleTap:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nuance/swype/input/tweaks/TapFilter;->honeycombDoubleTapBlacklist:[Ljava/lang/String;

    return-void
.end method

.method public static registerFilter(Ljava/util/List;)Lcom/nuance/swype/input/tweaks/TapFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;",
            ">;)",
            "Lcom/nuance/swype/input/tweaks/TapFilter;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "tapHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, "instance":Lcom/nuance/swype/input/tweaks/TapFilter;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .local v1, "sdkVersion":I
    const/16 v2, 0xb

    if-gt v2, v1, :cond_0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 39
    new-instance v0, Lcom/nuance/swype/input/tweaks/TapFilter;

    .end local v0    # "instance":Lcom/nuance/swype/input/tweaks/TapFilter;
    invoke-direct {v0}, Lcom/nuance/swype/input/tweaks/TapFilter;-><init>()V

    .line 40
    .restart local v0    # "instance":Lcom/nuance/swype/input/tweaks/TapFilter;
    const/4 v2, 0x0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 42
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/nuance/swype/input/tweaks/TapFilter;->suppressDoubleTap:Z

    return v0
.end method

.method public onEditorUpdate(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 50
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/swype/input/tweaks/TapFilter;->suppressDoubleTap:Z

    .line 51
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 52
    .local v2, "currentApp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    iget-object v1, p0, Lcom/nuance/swype/input/tweaks/TapFilter;->honeycombDoubleTapBlacklist:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 54
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nuance/swype/input/tweaks/TapFilter;->suppressDoubleTap:Z

    .line 60
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void

    .line 53
    .restart local v0    # "app":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onSingleTap(Z)Z
    .locals 1
    .param p1, "shouldResyncCache"    # Z

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
