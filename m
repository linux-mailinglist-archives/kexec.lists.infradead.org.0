Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23ED8115558
	for <lists+kexec@lfdr.de>; Fri,  6 Dec 2019 17:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDz6td78GqsXBEF2uAXxhTBWguu++5vdtC+BI5A6YHw=; b=TLxjgB7vZK3fbu
	i3guXfhbrHcGmC6aIvMTajwAprvE8oSWQeb236YeLvo0qsCV18wo9WRd7axhsyVDCI4WS+fgeZs+y
	fw31UvK1FCbjtGPLe6cCJNvfHfVcq5i9/+nPI20EeXMH1cr3n4GZ7HFGd2mrXEV1PoIqHu2u3DgGJ
	IPEE3wFUG9Y7O2SztKWZGK7o/jQTuUNNucb3R2inm3Vk5JWlMQFNCmC77f1aWffQ4CdUuSoRRpkQc
	XgbT+emipkF6DWJuMber5rhf0zSHXhHbnwwyat9BIuH6XeeH0CiDO6euEew9QCfiVDWt/vtvheQES
	omVxk8VGVnVuTyriK/fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGUK-0006Uy-ER; Fri, 06 Dec 2019 16:29:52 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGUG-0006UM-4v
 for kexec@lists.infradead.org; Fri, 06 Dec 2019 16:29:50 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB6GTj0k022068
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 7 Dec 2019 01:29:45 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB6GTjcn023187;
 Sat, 7 Dec 2019 01:29:45 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB6GTjb9005739; 
 Sat, 7 Dec 2019 01:29:45 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-11045877;
 Sat, 7 Dec 2019 01:28:26 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Sat, 7
 Dec 2019 01:28:25 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: piliu <piliu@redhat.com>
Subject: RE: [PATCH] makedumpfile/Makefile: remove -lebl from LIBS
Thread-Topic: [PATCH] makedumpfile/Makefile: remove -lebl from LIBS
Thread-Index: AQHVplGex8H3A8Zhe0yuBEZorexlb6eqjtuAgAGA2wCAAUdgQA==
Date: Fri, 6 Dec 2019 16:28:23 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC0359773A@BPXM09GP.gisp.nec.co.jp>
References: <1574989745-5262-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359725A@BPXM09GP.gisp.nec.co.jp>
 <6dc65874-803a-10f3-dc42-d8704323ea0b@redhat.com>
In-Reply-To: <6dc65874-803a-10f3-dc42-d8704323ea0b@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.92]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_082948_430983_3FFA25DE 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> 
> On 12/05/2019 06:36 AM, Kazuhito Hagio wrote:
> > Hi Pingfan,
> >
> > Thank you for the patch.
> >
> >> -----Original Message-----
> >> since the following commit, -lebl has been removed from elfutils.
> >> commit b833c731359af12af9f16bcb621b3cdc170eafbc
> >> Author: Mark Wielaard <mark@klomp.org>
> >> Date:   Thu Aug 29 23:34:11 2019 +0200
> >>
> >>     libebl: Don't install libebl.a, libebl.h and remove backends from spec.
> >>
> >>     All archive members from libebl.a are now in libdw.a. We don't generate
> >>     separate backend shared libraries anymore. So remove them from the
> >>     elfutils.spec file.
> >>
> >>     Signed-off-by: Mark Wielaard <mark@klomp.org>
> >>
> >> So remove it from LIBS for makedumpfile
> >
> > It seems that this is ok with the latest elfutils, but with older ones?
> > Is it possible to remove -lebl when elfutils does not have libebl.a?
> I have no idea about it for now. The method to check version depends on
> distribution. Is it doable by checking /usr/lib64/libebl ?

We have 'try-run' function written by Petr in the Makefile, which checks
if clock_gettime() requies -lrt.  How about utilizing it like this?

diff --git a/Makefile b/Makefile
index 1fdb6286e85d..d4d1fb563209 100644
--- a/Makefile
+++ b/Makefile
@@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
 SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c arch/ia64.c arch/ppc64.c arch/s390x.c arch/ppc.c arch/sparc64.c
 OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
 
-LIBS = -ldw -lbz2 -lebl -ldl -lelf -lz
+LIBS = -ldw -lbz2 -ldl -lelf -lz
 ifneq ($(LINKTYPE), dynamic)
 LIBS := -static $(LIBS)
 endif
@@ -79,6 +79,11 @@ LINK_TEST_PROG="int clock_gettime(); int main(){ return clock_gettime(); }"
 LIBS := $(LIBS) $(call try-run,\
 	echo $(LINK_TEST_PROG) | $(CC) $(CFLAGS) -o "$$TMP" -x c -,,-lrt)
 
+# elfutils-0.178 or later does not install libebl.a.
+LINK_TEST_PROG="int main() { return 0; }"
+LIBS := $(LIBS) $(call try-run,\
+	echo $(LINK_TEST_PROG) | $(CC) -o "$$TMP" -x c - -lebl,-lebl,)
+
 all: makedumpfile
 
 $(OBJ_PART): $(SRC_PART)


If libebl.a does not exist (gcc with -lebl fails), it will not append
-lebl to LIBS.

Thanks,
Kazu

> 
> Thanks,
> Pingfan
> >
> > Thanks,
> > Kazu
> >
> >>
> >> Signed-off-by: Pingfan Liu <piliu@redhat.com>
> >> ---
> >>  Makefile | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/Makefile b/Makefile
> >> index 1fdb628..df21b93 100644
> >> --- a/Makefile
> >> +++ b/Makefile
> >> @@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
> >>  SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c arch/ia64.c arch/ppc64.c arch/s390x.c
> >> arch/ppc.c arch/sparc64.c
> >>  OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
> >>
> >> -LIBS = -ldw -lbz2 -lebl -ldl -lelf -lz
> >> +LIBS = -ldw -lbz2 -ldl -lelf -lz
> >>  ifneq ($(LINKTYPE), dynamic)
> >>  LIBS := -static $(LIBS)
> >>  endif
> >> --
> >> 2.7.5
> >>
> >
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/kexec
> >
> 



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
