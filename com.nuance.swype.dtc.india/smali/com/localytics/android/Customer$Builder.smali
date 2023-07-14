.class public Lcom/localytics/android/Customer$Builder;
.super Ljava/lang/Object;
.source "Customer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Customer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCustomerId:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/localytics/android/Customer$Builder;->mCustomerId:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/localytics/android/Customer$Builder;->mFirstName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/localytics/android/Customer$Builder;->mLastName:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/localytics/android/Customer$Builder;->mFullName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/localytics/android/Customer$Builder;->mEmailAddress:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/Customer$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/localytics/android/Customer$Builder;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/Customer$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/localytics/android/Customer$Builder;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/Customer$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/localytics/android/Customer$Builder;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/Customer$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/localytics/android/Customer$Builder;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/localytics/android/Customer$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/Customer$Builder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/localytics/android/Customer$Builder;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/localytics/android/Customer;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/localytics/android/Customer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/localytics/android/Customer;-><init>(Lcom/localytics/android/Customer$Builder;Lcom/localytics/android/Customer$1;)V

    return-object v0
.end method

.method public setCustomerId(Ljava/lang/String;)Lcom/localytics/android/Customer$Builder;
    .locals 0
    .param p1, "customerId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/localytics/android/Customer$Builder;->mCustomerId:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/localytics/android/Customer$Builder;
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/localytics/android/Customer$Builder;->mEmailAddress:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/localytics/android/Customer$Builder;
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/localytics/android/Customer$Builder;->mFirstName:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/localytics/android/Customer$Builder;
    .locals 0
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/localytics/android/Customer$Builder;->mFullName:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/localytics/android/Customer$Builder;
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/localytics/android/Customer$Builder;->mLastName:Ljava/lang/String;

    .line 81
    return-object p0
.end method
