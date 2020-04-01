Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7439B19ABEF
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 14:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRoSgR//StZUeSuqoxqf/nUc3n7GGX7edNpS5bfleo4=; b=sa98WZrOoSn5no
	0EZhYvZvPJDzfkiDCydiqrjFbPotZpTXqLeNvOo9jZtDamKd1d6Cvfm/eOismK/Fl74vG5Uon2YX8
	ChByPZddNX5LIvOblhT5tpbStwwFLZwEkigtaIkuM3EQN0uqNfWDtU5Bun1lOnBMRZrOER+/xONm9
	ASNeAxjMcUFNx4OjEsTYpJzMoQHP7dRMhrshfTPeMaERSdtDlPVM+koTWDn7MRQORm262rSkq+L02
	DMVz5+PvULclu4Vm9ObTgurVl89M1H1aaZ+DiIVOLawviAhWQr/xl7yFTfhwZp6DgQlMD39buOk71
	9VAuWIZqjIegqqJ57/Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJciy-0003ew-GM; Wed, 01 Apr 2020 12:44:04 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJciv-0003eY-Kv
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 12:44:03 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 2C2F625B779;
 Wed,  1 Apr 2020 23:44:00 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id AC8731B62; Wed,  1 Apr 2020 14:43:57 +0200 (CEST)
Date: Wed, 1 Apr 2020 14:43:57 +0200
From: Simon Horman <horms@verge.net.au>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v2] kexec: support parsing the string "Reserved" to get
 the correct e820 reserved region
Message-ID: <20200401124357.GC29376@vergenet.net>
References: <20200224063655.9890-1-lijiang@redhat.com>
 <CACi5LpMDGg9JzB7pWY7KdUoV3aFa26Mp8qHR9M6uuEbfhvPcVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpMDGg9JzB7pWY7KdUoV3aFa26Mp8qHR9M6uuEbfhvPcVg@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_054401_835717_26F2735E 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Dave Young <dyoung@redhat.com>, Lianbo Jiang <lijiang@redhat.com>,
 Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 12:17:50PM +0530, Bhupesh Sharma wrote:
> Hi Lianbo,
> 
> On Mon, Feb 24, 2020 at 12:07 PM Lianbo Jiang <lijiang@redhat.com> wrote:
> >
> > When loading kernel and initramfs for kexec, kexec-tools could get the
> > e820 reserved region from "/proc/iomem" in order to rebuild the e820
> > ranges for kexec kernel, but there may be the string "Reserved" in the
> > "/proc/iomem", which caused the failure of parsing. For example:
> >
> >  #cat /proc/iomem|grep -i reserved
> > 00000000-00000fff : Reserved
> > 7f338000-7f34dfff : Reserved
> > 7f3cd000-8fffffff : Reserved
> > f17f0000-f17f1fff : Reserved
> > fe000000-ffffffff : Reserved
> >
> > Currently, kexec-tools can not handle the above case because the memcmp()
> > is case sensitive when comparing the string.
> >
> > So, let's fix this corner and make sure that the string "reserved" and
> > "Reserved" in the "/proc/iomem" are both parsed appropriately.
> >
> > Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> > ---
> > Note:
> > Please follow up this commit below about kdump fix.
> > 1ac3e4a57000 ("kdump: fix an error that can not parse the e820 reserved region")
> >
> > Changes since v1:
> > [1] use strncasecmp() instead of introducing another 'else-if'(
> > suggested by Bhupesh)
> >
> >  kexec/arch/i386/kexec-x86-common.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
> > index 61ea19380ab2..9303704a0714 100644
> > --- a/kexec/arch/i386/kexec-x86-common.c
> > +++ b/kexec/arch/i386/kexec-x86-common.c
> > @@ -90,7 +90,7 @@ static int get_memory_ranges_proc_iomem(struct memory_range **range, int *ranges
> >                 if (memcmp(str, "System RAM\n", 11) == 0) {
> >                         type = RANGE_RAM;
> >                 }
> > -               else if (memcmp(str, "reserved\n", 9) == 0) {
> > +               else if (strncasecmp(str, "reserved\n", 9) == 0) {
> >                         type = RANGE_RESERVED;
> >                 }
> >                 else if (memcmp(str, "ACPI Tables\n", 12) == 0) {
> > --
> > 2.17.1
> >
> 
> Thanks for the changes. V2 seems fine to me, so:
> 
> Acked-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
