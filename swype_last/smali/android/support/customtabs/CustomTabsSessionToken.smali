.class public final Landroid/support/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# instance fields
.field private final mCallback:Landroid/support/customtabs/CustomTabsCallback;

.field final mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;)V
    .registers 3
    .param p1, "callbackBinder"    # Landroid/support/customtabs/ICustomTabsCallback;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 52
    new-instance v0, Landroid/support/customtabs/CustomTabsSessionToken$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsSessionToken$1;-><init>(Landroid/support/customtabs/CustomTabsSessionToken;)V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallback:Landroid/support/customtabs/CustomTabsCallback;

    .line 63
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 77
    instance-of v0, p1, Landroid/support/customtabs/CustomTabsSessionToken;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 79
    .end local p1    # "o":Ljava/lang/Object;
    :goto_5
    return v0

    .line 78
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    check-cast p1, Landroid/support/customtabs/CustomTabsSessionToken;

    .line 79
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method final getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
