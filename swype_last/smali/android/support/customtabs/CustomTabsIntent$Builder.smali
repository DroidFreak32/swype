.class public final Landroid/support/customtabs/CustomTabsIntent$Builder;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActionButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntent:Landroid/content/Intent;

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mStartAnimationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/support/customtabs/CustomTabsSession;)V
    .registers 12
    .param p1, "session"    # Landroid/support/customtabs/CustomTabsSession;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 213
    iput-object v2, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 214
    iput-object v2, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    .line 215
    iput-object v2, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    .line 235
    if-eqz p1, :cond_22

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 1111
    iget-object v3, p1, Landroid/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 235
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :cond_22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "android.support.customtabs.extra.SESSION"

    if-nez p1, :cond_3c

    move-object v1, v2

    .line 3054
    :goto_2d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v3, v5, :cond_43

    .line 4031
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 239
    :cond_36
    :goto_36
    iget-object v1, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 240
    return-void

    .line 2107
    :cond_3c
    iget-object v1, p1, Landroid/support/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2d

    .line 4062
    :cond_43
    sget-boolean v3, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    if-nez v3, :cond_65

    .line 4064
    :try_start_47
    const-class v3, Landroid/os/Bundle;

    const-string/jumbo v5, "putIBinder"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    .line 4065
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4066
    sput-object v3, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_63
    .catch Ljava/lang/NoSuchMethodException; {:try_start_47 .. :try_end_63} :catch_85

    .line 4070
    :goto_63
    sput-boolean v9, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    .line 4073
    :cond_65
    sget-object v3, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_36

    .line 4075
    :try_start_69
    sget-object v3, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v1, v5, v4

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_69 .. :try_end_77} :catch_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_77} :catch_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_77} :catch_92

    goto :goto_36

    .line 4076
    :catch_78
    move-exception v1

    .line 4078
    :goto_79
    const-string/jumbo v3, "BundleCompatDonut"

    const-string/jumbo v4, "Failed to invoke putIBinder via reflection"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4079
    sput-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_36

    .line 4067
    :catch_85
    move-exception v3

    .line 4068
    const-string/jumbo v5, "BundleCompatDonut"

    const-string/jumbo v6, "Failed to retrieve putIBinder method"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 4076
    :catch_90
    move-exception v1

    goto :goto_79

    :catch_92
    move-exception v1

    goto :goto_79
.end method


# virtual methods
.method public final build()Landroid/support/customtabs/CustomTabsIntent;
    .registers 5

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 419
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.MENU_ITEMS"

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 421
    :cond_e
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 422
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 424
    :cond_1c
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;B)V

    return-object v0
.end method
