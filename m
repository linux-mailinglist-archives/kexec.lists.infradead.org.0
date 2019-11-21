Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45193105715
	for <lists+kexec@lfdr.de>; Thu, 21 Nov 2019 17:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SJA2qIxHGE4TgijhYm+osqNfJooXGXmw8nA6e3VVLA=; b=soQRraig5qlzgh
	lXdpebCJbrBqL52EH9BlHZroxe4ios31rd/GEPl/kE6mReTQZTsUHd3Jo784ofG421AtFlqFBC4YY
	fSf+MaOB2V+uzbUBPUpGAtieSjQm5PbsB5V8k/p3f22fVFv9U4/W6VJuXOCdeGvwzbJmQ5KUmNhM2
	EtzXgegxLUJtoo8ruQJ6zF1IWSHy/SEV2pUh56fQ62EUU36Xh2VYtYdN9mGnMWvXcEaRLCyvl1zNv
	Erh7QfcVcoF/yydc19I8c98hLr4J4qF3IJvfTRVdNOaEYBdJ6Y5MVWcU3Lt9rOebvCIXOIoPZ25BX
	mCamkoTg/MM9ROMhd19w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpO5-00011z-Fl; Thu, 21 Nov 2019 16:32:57 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpO1-00011g-Cc
 for kexec@lists.infradead.org; Thu, 21 Nov 2019 16:32:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574353971;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BzAnohYB9CSy5z9LMZ3eKPWV3wB9qWffN1wYr02kvyg=;
 b=CAO4vvEamLvfO67s1sh9vHSiueh046kyYuzuIz7EUGrzKgvlKOqC3Vo2QxBAcszGjABDLN
 BrPDKIXzUveXYscqJHJv28VK/QabwzWJHGlqUPlE11MTmup21UnWtkFmL8wcSZSse29fBJ
 NGG2KRmywM4Ru0UqbMFPr0i+cC2Mr54=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-5uvf8zAJOFekdvUTBym7lw-1; Thu, 21 Nov 2019 11:32:49 -0500
Received: by mail-lf1-f70.google.com with SMTP id j16so1067167lfk.2
 for <kexec@lists.infradead.org>; Thu, 21 Nov 2019 08:32:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tys6+I/q68ZFlF+wg5F/eo2+HwJ48b32mA4q6kJCO5A=;
 b=jBjW7Ryw2jZzSMarkfpIwOsNSlG5HNLIUMmw/cMAFS45RnRxcC2NvgWXg5cSxYLks+
 57jGe5vLqvlusAYPjW37Ag4J23DEdBBmzXPVHs+nyj7w3LPyOPFMtyiFPopefr8LVRcC
 D2NoJBNzvThV3zDJAv/JCnZzrfvgvxEKkU/cAbxDKefi1pSqkFtHv9ZeLBYsWAdIWYG0
 OS3L8gJXGqWvBsNYoC73fkKCwILlsE6XHgsrZzYqrwjfXa6DPkzo08ti6/yOllTxWDDz
 76Cwdbyvh+LoMiPR9YD8i48aGPAuAdULsQgqVP38pSAM9MHtXfZPpZJX801ChtzAmo0M
 bWpg==
X-Gm-Message-State: APjAAAVEyEGsUD5f1x3JgMf+/fGURsgOG4DrGpFsdvHEHNAByeWUUg/3
 mMI+19+6VX1n+fR3A8Dy3pOEkVqHYIj+2n6Wp2YcgMFtJWt5kwkyntW0op1gSHb4dUgtC4CJVP3
 kUoAlgJdqzZWtX9LsIHI4wb2T51Q9l+uo72IF
X-Received: by 2002:ac2:508f:: with SMTP id f15mr8335848lfm.146.1574353967820; 
 Thu, 21 Nov 2019 08:32:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqxtund0b/eEEqSs/wRTuXtcoZTDa6xBEyc0qhyow9H3HfQNBkcY2dPkkq+GoqLiJrYBiDt6ko8gillu1V1H0Yc=
X-Received: by 2002:ac2:508f:: with SMTP id f15mr8335821lfm.146.1574353967548; 
 Thu, 21 Nov 2019 08:32:47 -0800 (PST)
MIME-Version: 1.0
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <CAJ2QiJJ6DdxFheRo78+n1=ZuqMQnHeuLVWchK8SApt3w9wBKLQ@mail.gmail.com>
 <B71B3868-9A0B-46AD-8777-97A1599BFB91@oracle.com>
 <CACi5LpOF2FLrmXEyJ4FfjqJBxxt-np2+1V0EFK__EH=6ubFE0A@mail.gmail.com>
 <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
In-Reply-To: <276620F6-E9AC-4BC6-B413-D84677C3D6BC@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 21 Nov 2019 22:02:34 +0530
Message-ID: <CACi5LpO9hRKotoMAgEQiLPEHWm7DO_NXWmTL1Wcfi3A0OyGJMQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
To: John Donnelly <john.p.donnelly@oracle.com>
X-MC-Unique: 5uvf8zAJOFekdvUTBym7lw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_083253_501986_6773DBC1 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> On Wed, Nov 20, 2019 at 10:03 PM John Donnelly <john.p.donnelly@oracle.com> wrote:
>
> Hi,
>
>   Recent test below
>  This is your makedumpfile pulled from sourceforge .

Do you mean github? I don't remember pushing anything to sourceforge.
Please share the exact branch name and the source URL for the
makedumpfile you are using

> It would be helpful if you bumped the VERSION and DATE to be certain we are using the correct pieces .

You can print makedumpfile version in your scriptware. It lets you
know the latest makedumpfile version. Note that this indicates the
latest released version and not the development branch. The
development branch is for things under test (like this change) and
being stabilized whereas the released version contains a bump to a new
VERSION number and DATE at which a release is made.

# makedumpfile -v
makedumpfile: version 1.6.6 (released on 27 Jun 2019)
lzo    enabled

> kdump: saving vmcore
> makedumpfile 1.6.6, 27 Jun 2019.
> sadump: unsupported architecture
>               phys_start         phys_end       virt_start         virt_end
> LOAD[ 0]         92a80000         94fe0000 ffff800010080000 ffff8000125e0000
> LOAD[ 1]         90000000         92000000 ffffc00010000000 ffffc00012000000
> LOAD[ 2]         928c0000         dfe00000 ffffc000128c0000 ffffc0005fe00000
> LOAD[ 3]         ffe00000         fffa0000 ffffc0007fe00000 ffffc0007ffa0000
> LOAD[ 4]        880000000       1000000000 ffffc00800000000 ffffc00f80000000
> LOAD[ 5]       8800000000       bff7030000 ffffc08780000000 ffffc0bf77030000
> LOAD[ 6]       bff7060000       bff72b0000 ffffc0bf77060000 ffffc0bf772b0000
> LOAD[ 7]       bff72f0000       bff8030000 ffffc0bf772f0000 ffffc0bf78030000
> LOAD[ 8]       bff8050000       bff8070000 ffffc0bf78050000 ffffc0bf78070000
> LOAD[ 9]       bff80d0000       bff8270000 ffffc0bf780d0000 ffffc0bf78270000
> LOAD[10]       bff8280000       bff83d0000 ffffc0bf78280000 ffffc0bf783d0000>
> LOAD[11]       bff8870000       bffc1a0000 ffffc0bf78870000 ffffc0bf7c1a0000
> LOAD[12]       bffc1c0000       bffc1d0000 ffffc0bf7c1c0000 ffffc0bf7c1d0000
> LOAD[13]       bffe210000       bfffd10000 ffffc0bf7e210000 ffffc0bf7fd10000
> LOAD[14]       bfffd40000       bfffd50000 ffffc0bf7fd40000 ffffc0bf7fd50000
> LOAD[15]       bfffe00000       c000000000 ffffc0bf7fe00000 ffffc0bf80000000
> Linux kdump
> VMCOREINFO   :
  OSRELEASE=5.4.0-rc8
  PAGESIZE=65536
> page_size    : 65536
  SYMBOL(init_uts_ns)=ffff800011a65ca8
  SYMBOL(node_online_map)=ffff800011a5d490
  SYMBOL(swapper_pg_dir)=ffff8000112f0000
  SYMBOL(_stext)=ffff800010081000
  SYMBOL(vmap_area_list)=ffff800011b29a98
  SYMBOL(mem_section)=ffff00bf7be7e300
  LENGTH(mem_section)=64
  SIZE(mem_section)=16
  OFFSET(mem_section.section_mem_map)=0
  NUMBER(MAX_PHYSMEM_BITS)=48   OFFSET(vmap_area.va_start)=0
  OFFSET(vmap_area.list)=40
  LENGTH(zone.free_area)=14
  SYMBOL(log_buf)=ffff800011ada808
  SYMBOL(log_buf_len)=ffff800011ada810
  SYMBOL(log_first_idx)=ffff800011e772d4
  SYMBOL(clear_idx)=ffff800011e74d20
  SYMBOL(log_next_idx)=ffff800011e772e0
  SIZE(printk_log)=16
  OFFSET(printk_log.ts_nsec)=0
  OFFSET(printk_log.len)=8
  OFFSET(printk_log.text_len)=10
  OFFSET(printk_log.dict_len)=12
  LENGTH(free_area.free_list)=6
  NUMBER(NR_FREE_PAGES)=0
  NUMBER(PG_lru)=4
  NUMBER(PG_private)=13
  NUMBER(PG_swapcache)=10
  NUMBER(PG_swapbacked)=19
  NUMBER(PG_slab)=9
  NUMBER(PG_hwpoison)=22
  NUMBER(PG_head_mask)=65536
  NUMBER(PAGE_BUDDY_MAPCOUNT_VALUE)=-129
  NUMBER(HUGETLB_PAGE_DTOR)=2
  NUMBER(PAGE_OFFLINE_MAPCOUNT_VALUE)=-257
  NUMBER(VA_BITS)=48
  NUMBER(kimage_voffset)=0xffff7fff7d600000
  NUMBER(PHYS_OFFSET)=0x80000000
  NUMBER(tcr_el1_t1sz)=0x10
  KERNELOFFSET=0
  CRASHTIME=1574266958

> phys_base    : 80000000 (vmcoreinfo)

> max_mapnr    : c00000
> There is enough free memory to be done in one cycle.

> Buffer size for the cyclic mode: 3145728
> va_bits      : 47
> page_offset  : ffffc00000000000
> kdump: saving vmcore failed

You again seem to be using an old/incorrect version of makedumpfile.
As you can see here from [0] and [1] the newer makedumpfile patches I
posted print where the va_bits are derived from - _stext symbol or
vmcoreinfo.

Since you are running a kdump test, it should print something like
this for va_bits if you have the correct makedumpfile changes compiled
in and installed (via make install) - notice the source from where
va_bits is determined properly is printed in brackets:
phys_base    : 80000000 (vmcoreinfo)

max_mapnr    : 97fd00
There is enough free memory to be done in one cycle.

Buffer size for the cyclic mode: 2490176
va_bits        : 48 (vmcoreinfo)
page_offset    : ffff000000000000 (approximation)
kimage_voffset   : fffeffff8fc00000
max_physmem_bits : 52
section_size_bits: 30

Regards,
Bhupesh

[0]. <https://github.com/bhupesh-sharma/makedumpfile/blob/52-bit-va-support-via-vmcore-upstream-v4/arch/arm64.c#L468>
[1]. <https://github.com/bhupesh-sharma/makedumpfile/blob/52-bit-va-support-via-vmcore-upstream-v4/arch/arm64.c#L511>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
