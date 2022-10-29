.class public final Landroid/support/v7/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field private static final sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 87
    new-instance v0, Landroid/support/v7/widget/VectorEnabledTintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 94
    :goto_25
    return-void

    .line 91
    :cond_26
    new-instance v0, Landroid/support/v7/widget/TintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_25
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 41
    .line 1061
    instance-of v5, p0, Landroid/support/v7/widget/TintContextWrapper;

    if-nez v5, :cond_15

    .line 1062
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    instance-of v5, v5, Landroid/support/v7/widget/TintResources;

    if-nez v5, :cond_15

    .line 1063
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    instance-of v5, v5, Landroid/support/v7/widget/VectorEnabledTintResources;

    if-eqz v5, :cond_3a

    .line 41
    :cond_15
    :goto_15
    if-eqz v4, :cond_5d

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1e
    if-ge v1, v0, :cond_4d

    .line 44
    sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 45
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/TintContextWrapper;

    move-object v3, v4

    .line 46
    .local v3, "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :goto_31
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    if-ne v4, p0, :cond_4a

    .line 57
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    .end local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :goto_39
    return-object v3

    .line 1068
    :cond_3a
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->isCompatVectorFromResourcesEnabled()Z

    move-result v5

    if-eqz v5, :cond_46

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-gt v5, v6, :cond_15

    .line 1075
    :cond_46
    const/4 v4, 0x1

    goto :goto_15

    .line 45
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    :cond_48
    const/4 v3, 0x0

    goto :goto_31

    .line 43
    .restart local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 52
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    .end local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_4d
    new-instance v3, Landroid/support/v7/widget/TintContextWrapper;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    .line 53
    .restart local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_5d
    move-object v3, p0

    .line 57
    goto :goto_39
.end method


# virtual methods
.method public final getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_8
.end method

.method public final setTheme(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_8

    .line 104
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 108
    :goto_7
    return-void

    .line 106
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_7
.end method
