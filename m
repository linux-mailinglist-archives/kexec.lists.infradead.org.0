Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1D9FC919
	for <lists+kexec@lfdr.de>; Thu, 14 Nov 2019 15:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EAPbforP2PCZ4V2NoTx4LKHO8cOChuYaGvbWotlgQQ=; b=cr54YuuWyRHHLp
	u7Tkv26a8pH5UmONqJbhxo0kcdN/xLos4B3wmKVoNA/2XGKYQoaf678rtCLjWOOb4H4Lt4rT8qAQB
	Q9AxLK7B85d9NlMu+kkBwknHTpRf4LZnDPtBOWu9jiAfS/FmhCbdamT6bC/db09at7OsPNK2pcbhm
	SuBDrzAYQ6SZ7QmfBXB7I5g8HKE5SqE6a4uacs9RgjfVULF4vl6Te3jsXfB9CoLwqPu/gbQ6DW4/F
	Nr23dnfBZv7qJ65LhFCoBiYiH1mFHqdvkQO1rjwNZwPa7KU/yMuj4Abl0rJvc1x+F6zysvEMl+/AG
	MoCR0BxaGUN17Dyo2MIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGLu-0008Jc-Fg; Thu, 14 Nov 2019 14:44:06 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGLq-0008If-Q9
 for kexec@lists.infradead.org; Thu, 14 Nov 2019 14:44:04 +0000
Received: from zn.tnic (p200300EC2F15E200329C23FFFEA6A903.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f15:e200:329c:23ff:fea6:a903])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 94C131EC0CF9;
 Thu, 14 Nov 2019 15:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1573742637;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=U6HDLgUUx0CthObylZaUC8UDe3iTuU8JW2SrhOYtrD4=;
 b=aINqLkxctOTzz6Tkug9Y7tyzmRYl2w/hGQciKxnvsA7Vl2tTZaWJIayrfRvGLWBFHd+xzl
 URzEYPc6gzF15HR6QxAG11dGr2UfY+P34h1RLBx6ZJb0xQ40qOmHWNsBlk2v/keHXApTkk
 aKWGQMJQRl+Ct+6iZBvj2d1Uam5ukpU=
Date: Thu, 14 Nov 2019 15:43:53 +0100
From: Borislav Petkov <bp@alien8.de>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 3/3 v9] kexec: Fix i386 build warnings that missed
 declaration of struct kimage
Message-ID: <20191114144353.GB7222@zn.tnic>
References: <20191108090027.11082-1-lijiang@redhat.com>
 <20191108090027.11082-4-lijiang@redhat.com>
 <20191114123920.GA7222@zn.tnic>
 <59fbd119-495a-4d00-9738-98c22b276c1f@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59fbd119-495a-4d00-9738-98c22b276c1f@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_064403_008112_06AE6A25 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 10:20:42PM +0800, lijiang wrote:
> I really saw my building result, but kbuild reported the following messages:
> 
> vim +5 arch/x86/include/asm/crash.h
> 
> dd5f726076cc76 Vivek Goyal 2014-08-08   4  
> dd5f726076cc76 Vivek Goyal 2014-08-08  @5  int crash_load_segments(struct kimage *image);
> dd5f726076cc76 Vivek Goyal 2014-08-08   6  int crash_copy_backup_region(struct kimage *image);
> dd5f726076cc76 Vivek Goyal 2014-08-08   7  int crash_setup_memmap_entries(struct kimage *image,
> dd5f726076cc76 Vivek Goyal 2014-08-08   8  		struct boot_params *params);
> 89f579ce99f7e0 Yi Wang     2018-11-22   9  void crash_smp_send_stop(void);
> dd5f726076cc76 Vivek Goyal 2014-08-08  10  
> 
> :::::: The code at line 5 was first introduced by commit 
>        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> :::::: dd5f726076cc7639d9713b334c8c133f77c6757a kexec: support for kexec on panic using new system call
>        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You should not take the report of a bot blindly but should always double
check it. Like every other computer system programmed by humans, it can
make mistakes.

> Would you mind giving me any suggestions about this?

I'll take care of it all and push the results out soon.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
