Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E621927B7A
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 13:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZhZflMdO9AcDh7Lw641YB0mW28Vgbi6aYsqswwzbPY=; b=L6fndjMEf9ak7e
	NQX9/ozEI27BMbMeGu3H3AqEXdsIypyHiDlQymkDsN6TMZ3eLiWQM/ZEvE41GUjs7fqXWog7M4G/3
	XCiPHKuzWeBg/9s3QSN7xg1iev5b/n59mHPjMPuOnqqAMQbV2ahE1U1HFWPdB2z8uzOvmmSxVXozV
	8dJevvD7BHhh05AbnTPUWcMpc+lbUdftAUXH+WSSrKP6N6bXCIDRFznUpcfeKWbibL5X4ue7poF3A
	5oIzIcKdcoksd/CgfQ/5PELnhIr12fgfuCUB/vX6kpDgOPdGCqsPj4PQyTI4ybeYMNm+MNFDsjxgV
	z5hNPDAploQp6+2u2KJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTleP-0000hs-Cm; Thu, 23 May 2019 11:12:45 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTleL-0000hM-QA
 for kexec@lists.infradead.org; Thu, 23 May 2019 11:12:43 +0000
Received: by mail-qt1-f195.google.com with SMTP id h1so6203152qtp.1
 for <kexec@lists.infradead.org>; Thu, 23 May 2019 04:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3bSe+JdGvEiphhccDvtVR7dSMKIAlWg4wxwHIHyEBAI=;
 b=ER4aZYa1NL5GHUwB+AYvmauaEsc4MFqQ6dJWGv1fwsSenrQElm0ZSlb00/pYFvWYuk
 JQeV9Fj5feME/f1BzMvQEqkVc3+Q6PdHV8hiVVqlD1yvGjx6BgHE/F8qzxaTquNWXX5P
 huQuYkicY5f0G1lXl+wnDNkXGb78ytrhDdoN5XedA8UGOin+JfRGFyYhXXAQOCNl7TQM
 UmOB1+Y3/G3byagNhLtqa/HhrkLnM2eM+ikbix/UdkyIGAAL1N8Tw/gMNTWPnKTXRfGk
 tf3u/M7tSbGew/x6LwNLnv3hK/GmIpbTIjg3oqdxE6WoaNjqO9R709T3ZSj+wStlbWIU
 ygtA==
X-Gm-Message-State: APjAAAUmhWGL2/kro/fQd6iuS1LqqOEE4XsOkJqtrC1SfEyiNjwNvQo5
 Ue1uvD4TEZmH38d81rolbivUc1avPGg34IODrKByzfbLyZCUiA==
X-Google-Smtp-Source: APXvYqy8zYW/qjC54G4JJrW/fAOtZxWaXD/8KqWt+aG9qregD5NkB8PXSbpKQY5Y5kIjrv3tlLpROdtl/baDTb+cWGk=
X-Received: by 2002:ac8:18b8:: with SMTP id s53mr74788228qtj.232.1558609960999; 
 Thu, 23 May 2019 04:12:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190514050959.21093-1-kasong@redhat.com>
 <20190514050959.21093-2-kasong@redhat.com>
 <20190523030144.GA8174@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190523030144.GA8174@dhcp-128-65.nay.redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 23 May 2019 19:12:29 +0800
Message-ID: <CACPcB9c=TCn2Xy8sPwOjjFBTGcMe0_W5uLm-q7c9YDF2dYJivg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] x86: Update boot parameters defination
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_041241_851387_1812CD15 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 11:01 AM Dave Young <dyoung@redhat.com> wrote:
>
> Hi Kairui
> On 05/14/19 at 01:09pm, Kairui Song wrote:
> > Since kernel commit e6e094e053af75 ("x86/acpi, x86/boot: Take RSDP address
> > from boot params if available"), kernel accept a acpi_rsdp_addr param in
> > boot_params. Sync the x86_linux_param_header to support this param.
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >  include/x86/x86-linux.h | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/include/x86/x86-linux.h b/include/x86/x86-linux.h
> > index 352ea02..a5d8df8 100644
> > --- a/include/x86/x86-linux.h
> > +++ b/include/x86/x86-linux.h
> > @@ -45,8 +45,7 @@ struct apm_bios_info {
> >       uint16_t cseg_len;      /* 0x4e */
> >       uint16_t cseg_16_len;   /* 0x50 */
> >       uint16_t dseg_len;      /* 0x52 */
> > -     uint8_t  reserved[44];  /* 0x54 */
> > -};
> > +} __attribute__((packed));
>
> It should be good to keep same as the kernel header without packed
> attribute.
>
> is it possible to sync the latest mainline uapi bootparam header file,
> maybe after this series get solved?
>

Hi Dave,

I can remove the packed attr then, just ensure it won't break
anything, a bit paranoid maybe...

About sync the whole structure, the problem is kexec tools' header
structure is different so that will change a lot. Maybe could be
discussed seperately.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
