.class public Lcom/localytics/android/Customer;
.super Ljava/lang/Object;
.source "Customer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/Customer$1;,
        Lcom/localytics/android/Customer$Builder;
    }
.end annotation


# instance fields
.field private final mCustomerId:Ljava/lang/String;

.field private final mEmailAddress:Ljava/lang/String;

.field private final mFirstName:Ljava/lang/String;

.field private final mFullName:Ljava/lang/String;

.field private final mLastName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/localytics/android/Customer$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/localytics/android/Customer$Builder;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/localytics/android/Customer$Builder;->access$000(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/Customer;->mCustomerId:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/localytics/android/Customer$Builder;->access$100(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/Customer;->mFirstName:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/localytics/android/Customer$Builder;->access$200(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/Customer;->mLastName:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/localytics/android/Customer$Builder;->access$300(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/Customer;->mFullName:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/localytics/android/Customer$Builder;->access$400(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/Customer;->mEmailAddress:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/Customer$Builder;Lcom/localytics/android/Customer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/localytics/android/Customer$Builder;
    .param p2, "x1"    # Lcom/localytics/android/Customer$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/localytics/android/Customer;-><init>(Lcom/localytics/android/Customer$Builder;)V

    return-void
.end method


# virtual methods
.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/localytics/android/Customer;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/localytics/android/Customer;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/localytics/android/Customer;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/localytics/android/Customer;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/localytics/android/Customer;->mLastName:Ljava/lang/String;

    return-object v0
.end method
