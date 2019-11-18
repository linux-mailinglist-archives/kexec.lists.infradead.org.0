Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A707D100BE6
	for <lists+kexec@lfdr.de>; Mon, 18 Nov 2019 19:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FJogZdrQz/EcxmrG3Mg9nfqs2bdehaIG2Makx8Cs3s=; b=nt28sDokkJ4EOo
	l4+MBEFStJBsGUKeyu8NOT8YZN68qOzzOc/ruWzzrtQypO1usXfuwajLLqsPHV3Rw66k5LKcbl2kK
	T/FF2EkRDteOxfxNjaakG1MISJzEHbIESDNwinzJ9D8xMXOxhHsq6qRuO0bYESs+K7a94p4Y5rLby
	PpYFSFnHlvV4tKYWPguQEF2kmpBGMMVv/ftmkStfY2LUrngm7W/VaISPzI92cqmtz3OC1RgjLA+Wn
	iRQgZF3rpXvSGCCK+JnmhcVsKKhNQvHEN5oKZ8wm1LPM5+mPUmPUKoLxxwCjivGEA2NIfolsRJh/7
	rfiSB3F8sWi/F/yAl4rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWmCP-000400-DO; Mon, 18 Nov 2019 18:56:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWmCK-0003zN-O8
 for kexec@lists.infradead.org; Mon, 18 Nov 2019 18:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574103386;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J0o29LLAF1v1mCnUHfmDwIRGypmxIF9XwOJdyH9NSrk=;
 b=BjWQG4KpkI2dh9rTbUcVg8bDP/TttPDzuqpzyPa2z4i9gctKj03NGAlvxyI/k5QuSZkW98
 nvOYRKXqDR9HLjww85D1UXEUSlp6vf5Exlz9fvLp6wcUC4EGJN5d6fueiKDW9vBa/h45EV
 o83YPDHvuGQJ2/VNshx/nW8B3b3bFmI=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69-p2ryc94gPg6xMypUKoYMZw-1; Mon, 18 Nov 2019 13:56:23 -0500
Received: by mail-lj1-f197.google.com with SMTP id e12so3569375ljk.19
 for <kexec@lists.infradead.org>; Mon, 18 Nov 2019 10:56:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y0uuw/p4jN22rpJ6ZIq8g6Bxz1L3tioVESnf1UmlumU=;
 b=bynhVG9Pb+rI0tGS1pbFgdQ0cFxWgsy7r+d5JSIUEclMc9cPETAc6DyWrMBL8fswHa
 SNB2+YSrO29Z46EU+ZeL/TmIsCebTDRQ//X6IDUnglZjZQtw5cO2h9RJsJVp1tGWurSp
 fh734fEjdvWfmyC4tvWJxva0+obieTfB0hGih8Br79U0ncknHhwjJzoNYi/0Ui/IRADT
 h95MRVilYBtqpwwWd0nz0WuSXaHnmC2RanDZjASpOE0R0ikKqpkOCBIC83dgPZZOzprN
 +eSCZrGieLLb97W7h6ge/pqt/Kx4+JwLWedj90EiLB2qOdjLPwt5ZYaoWmPUZPFXZLB2
 BbTg==
X-Gm-Message-State: APjAAAVvbzDdSHaTRY3hin9SMyHKWu+NPQf/+lC/zrPyNTMy1qIXn7wI
 oPBTJSDEh5za2ol9X5PmuCeJ3n2Vr/tQdxaw04JCQRpbcmDRSbBnujqpyGTZvmHxZdsUZQmf7EQ
 pOaLXaf7UfwCLfPwWNBYxKi+JrrvkEW9aGSIx
X-Received: by 2002:a05:6512:49c:: with SMTP id v28mr667838lfq.9.1574103382318; 
 Mon, 18 Nov 2019 10:56:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqzlu3PSLJP+exyabIB26cC6t73tM6/5w1kiR5YKhth04IlrVO/PR9JvZTUpIqy8qV4Sy4m3NvolV6Opva21tcw=
X-Received: by 2002:a05:6512:49c:: with SMTP id v28mr667827lfq.9.1574103382010; 
 Mon, 18 Nov 2019 10:56:22 -0800 (PST)
MIME-Version: 1.0
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
In-Reply-To: <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 19 Nov 2019 00:26:08 +0530
Message-ID: <CACi5LpOUbZBNhOMg-nUY1C7km5ip9MEU+mszGOXBS7V0hyapWg@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-MC-Unique: p2ryc94gPg6xMypUKoYMZw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_105628_866243_3DDBFCC2 
X-CRM114-Status: GOOD (  29.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Mon, Nov 18, 2019 at 10:42 AM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> Re-sending in plain text mode.
>
> On Tue, Nov 12, 2019 at 4:39 PM Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >
> > Changes since v3:
> > ----------------
> > - v3 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022534.html
> > - Added a new patch (via [PATCH 4/4]) which marks '--mem-usage' option as
> >   unsupported for arm64 architecture. With the newer arm64 kernels
> >   supporting 48-bit/52-bit VA address spaces and keeping a single
> >   binary for supporting the same, the address of
> >   kernel symbols like _stext, which could be earlier used to determine
> >   VA_BITS value, can no longer to determine whether VA_BITS is set to 48
> >   or 52 in the kernel space. Hence for now, it makes sense to mark
> >   '--mem-usage' option as unsupported for arm64 architecture until
> >   we have more clarity from arm64 kernel maintainers on how to manage
> >   the same in future kernel/makedumpfile versions.
> >
> > Changes since v2:
> > ----------------
> > - v2 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022456.html
> > - I missed some comments from Kazu sent on the LVA v1 patch when I sent
> >   out the v2. So, addressing them now in v3.
> > - Also added a patch that adds a tree-wide feature to read
> >   'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).
> >
> > Changes since v1:
> > ----------------
> > - v1 was sent as two separate patches:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022424.html
> >   (ARMv8.2-LPA)
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022425.html
> >   (ARMv8.2-LVA)
> > - v2 combined the two in a single patchset and also addresses Kazu's
> >   review comments.
> >
> > This patchset adds support for ARMv8.2 extensions in makedumpfile code.
> > I cover the following two cases with this patchset:
> >  - 48-bit kernel VA + 52-bit PA (LPA)
> >  - 52-bit kernel VA (LVA) + 52-bit PA (LPA)
> >  - 48-bit kernel VA + 52-bit user-space VA (LVA)
> >  - 52-bit kernel VA + 52-bit user-space VA (Full LVA)
> >
> > This has been tested for the following user-cases:
> > 1. Creating a dumpfile using /proc/vmcore,
> > 2. Creating a dumpfile using /proc/kcore, and
> > 3. Post-processing a vmcore.
> >
> > I have tested this patchset on the following platforms, with kernels
> > which support/do-not-support ARMv8.2 features:
> > 1. CPUs which don't support ARMv8.2 features, e.g. qualcomm-amberwing,
> >    ampere-osprey.
> > 2. Prototype models which support ARMv8.2 extensions (e.g. ARMv8 FVP
> >    simulation model).
> >
> > Also a preparation patch has been added in this patchset which adds a
> > common feature for archs (except arm64, for which similar support is
> > added via subsequent patch) to retrieve 'MAX_PHYSMEM_BITS' from
> > vmcoreinfo (if available).
> >
> > I recently posted two kernel patches (see [0] and [1]) which append
> > 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' to vmcoreinfo in the kernel
> > code, so that user-space code can benefit from the same.
> >
> > This patchset ensures backward compatibility for kernel versions in
> > which 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' are not available in
> > vmcoreinfo.
> >
> > [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html
> > [1]. http://lists.infradead.org/pipermail/kexec/2019-November/023962.html
> >
> > Cc: John Donnelly <john.p.donnelly@oracle.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: kexec@lists.infradead.org
> >
> > Bhupesh Sharma (4):
> >   tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from vmcoreinfo (if available)
> >   makedumpfile/arm64: Add support for ARMv8.2-LPA (52-bit PA support)
> >   makedumpfile/arm64: Add support for ARMv8.2-LVA (52-bit kernel VA
> >     support)
> >   makedumpfile: Mark --mem-usage option unsupported for arm64
> >
> >  arch/arm.c     |   8 +-
> >  arch/arm64.c   | 438 ++++++++++++++++++++++++++++++++++++++++++---------------
> >  arch/ia64.c    |   7 +-
> >  arch/ppc.c     |   8 +-
> >  arch/ppc64.c   |  49 ++++---
> >  arch/s390x.c   |  29 ++--
> >  arch/sparc64.c |   9 +-
> >  arch/x86.c     |  34 +++--
> >  arch/x86_64.c  |  27 ++--
> >  makedumpfile.c |   7 +
> >  makedumpfile.h |   3 +-
> >  11 files changed, 439 insertions(+), 180 deletions(-)
> >
> > --
>
> Tested this patch-set on Marvell's TX2 platform on top
> commit(82e6cce2219a) of https://git.code.sf.net/p/makedumpfile/code
> (devel branch)
>
> Tested-by: Prabhakar Kushwaha <pkushwaha@marvell.com>

Thanks for testing the patchset.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
