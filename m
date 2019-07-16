Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E2D6AFA4
	for <lists+kexec@lfdr.de>; Tue, 16 Jul 2019 21:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqEiUb6c0qhGUgbiytlKBD99BxpmXgxjDxN0D0BH3Tw=; b=cWxuSp6m4dR57C
	mFU2itmqmlWLvv8a7dg9X04DgerI8au7Hs0j8+ZQNjVzAtE891twVSDQ5vOeTQugvILhTQpgK4Duu
	Vpme718f4O1TdawU2F99p5k0iYRrFBPI9oBwfjI1RV2q3kZc1PN1H6wsXXh9NAI7yWi/uph7wOrIy
	/Af6/A6BfOP8rCHsuJm6o9ihIqWIA9I1vhKekrF50t18d7evNG7HVoEOZCzuzt5z4+EifdVklvBHS
	uoOPqsTtDrxRCYE+U6c6gIOds4ulmZcLrnJ4kQnY80pYX0QY20GG3Rv/ghq1pt54DqxoshE0wrzn3
	1+vVN0JU9WIrkzkwsCOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnSvF-0003om-W3; Tue, 16 Jul 2019 19:15:34 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnSvB-0003nQ-9r
 for kexec@lists.infradead.org; Tue, 16 Jul 2019 19:15:30 +0000
Received: by mail-lj1-f196.google.com with SMTP id m8so21061248lji.7
 for <kexec@lists.infradead.org>; Tue, 16 Jul 2019 12:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=80ZYuSoWD8dRJdXlFzyetgzX+pkAR+t4gU7qw9quipc=;
 b=deEGNO8WKdgA6AeQvdp7jsPxvLbi/dweU7ncDsMTCBiUatudcZ0brq1xWK68cKrclJ
 BP6WiO4CFMP8a/LtVHKCm8WKvUxtaqEYY0K3D79NkGOJ+obOtHviVRyTKLqueyqAKu32
 UByzewrIWpqKVt2FzTb3RP+vGCPcYk+L70e5M4wmLKbHT7M2aLOjs/jkG+NZTjKXIDcN
 7mz/P/Vi2Xct0/y7czt+Mu7PLidlcahQ4E/4x0lCk4voUmXNk7AU3a3Rrt6eqIQbpyAe
 ZOk1GlVO7op3Qe+RF7kf8yRPN6wQ7kijXNiUbbTz7K9mbjdRjJcn/wrivn0HGzO3biEv
 bUNQ==
X-Gm-Message-State: APjAAAVHCzSHWpvX1aGW/ACt3ZEV8heC80lxXpFhtfMTFjmLqhLlJhcm
 onAS5/omha22SnMSZI/TtarFVr4IpLW6pKpnZpB91A==
X-Google-Smtp-Source: APXvYqwjNoW9dewjCrOxXZ0aEJaJ13MNJRPmLCLgO7nP8DPug6UsiO06tVqljJTx1j2l753/INW73OQC4vP8qrTqO0M=
X-Received: by 2002:a2e:98c9:: with SMTP id s9mr18840062ljj.176.1563304527947; 
 Tue, 16 Jul 2019 12:15:27 -0700 (PDT)
MIME-Version: 1.0
References: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
 <20190716114942.7ufsup2eyco4pxax@verge.net.au>
In-Reply-To: <20190716114942.7ufsup2eyco4pxax@verge.net.au>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 17 Jul 2019 00:45:14 +0530
Message-ID: <CACi5LpPu2roLZPuOMfZ0_5CN7op+xfh1FkTS34smEq-+R_C17g@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] kexec/arm64: Add support for zlib compressed
 kernel images (Image.gz)
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_121529_346336_DEE41004 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 5:19 PM Simon Horman <horms@verge.net.au> wrote:
>
> On Mon, Jul 15, 2019 at 11:32:52AM +0530, Bhupesh Sharma wrote:
> > Changes since v1:
> > ----------------
> > (v1 can be viewed here: http://lists.infradead.org/pipermail/kexec/2019-July/023288.html)
> >  - Fixed the potential file descriptor leakage code legs pointed out by
> >    Simon.
> >  - Ran Valgrind to make sure no potential memory leakage issues are
> >    introduced by this patchset.
> >
> > This patchset adds the support for zlib compressed kernel images
> > (Image.gz) for arm64 kexec-tools.
> >
> > This was discussed a bit with the arm64 kernel maintainers (see [0]) and
> > after discussing the pros and cons of adding this support in
> > kernel-space v/s in user-space, we decided it makes more sense to add
> > this support to the user-space kexec-tools.
> >
> > Note that this series adds support for unsigned arm64 Image.gz files
> > only as signing an Image.gz type file is not a easy implementation from
> > kexec-tools p-o-v. Also even standard signing tools like sbsign fail to
> > recongize the Image.gz format:
> >
> >  $ sbsign --key certs/signing_key.pem  --cert certs/signing_key.pem Image.gz
> >    Invalid DOS header magic
> >
> > ... because that gzip file isn't a PE32+ that can be loaded by UEFI.
> > So I will work on the same in coming days and try to send a RFC
> > patchset for the same later on.
> >
> > [0]. http://lists.infradead.org/pipermail/kexec/2019-June/023156.html
>
> Thanks, applied for inclusion in v2.0.20.

Thanks Simon.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
