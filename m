Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120E51B17F
	for <lists+kexec@lfdr.de>; Mon, 13 May 2019 09:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RV/ppD2f2P7dAQ5R9cqcGu28kXWX2c0HptN52o3yZXQ=; b=Ld7cRg5eA+cPod
	qAHJ+8pBrBByZiP7G5okYUeTXBDiqZQQHaVFITKjm0/2NaJK+pvqnUA8ymCBKMBmDDHqKfevBVmpw
	fAp+IRP4S0wD/HvKVFywn20Y+4PwerAHyfIZRlzr46lAAwTm01Tg+FDjIOwX0MryNtQJEE5jU62Ny
	7X6FhJ7bcv0+mxLvKDSohizH1v20wcHTTLptYSIbuj8UPnXRs3O40tWk/NkqlsPrUqpG1lDapPP4g
	P2pc+FgwVrtFMMkNhpsjHw+WrUOtQB3vXHD37XSq6DwAAvgfX39tUkDOz781XJDmNeSqxjihZthhW
	hU9qfGOXwpPc+K29Bx0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5iz-0003gs-6e; Mon, 13 May 2019 07:50:17 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5iw-0003gb-Af
 for kexec@lists.infradead.org; Mon, 13 May 2019 07:50:15 +0000
Received: from zn.tnic (p200300EC2F29E500E0EF2AA1CE3E4EBD.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f29:e500:e0ef:2aa1:ce3e:4ebd])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C5E561EC0380;
 Mon, 13 May 2019 09:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1557733812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=6D4CnAScIoeS9pJoUChZMx+t6OGcqUGcrnbQZkMlkII=;
 b=rPyRgNqQXxs1vWh/ITXiBzXG7D+gWpV4kZLi7Y1THG3sNJi7H+FDRvPBPzUynfBCmuNJge
 t36Jx9RSqZe9rA9LJ1U8pTgW8DcjNiS+YneBo/fHN9vdxqt7uZEDvYSr+lZU7Kbt+qrhEJ
 4AaLvoFPBQV4sSTs6YVwvMVua4hLUFw=
Date: Mon, 13 May 2019 09:50:06 +0200
From: Borislav Petkov <bp@alien8.de>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190513075006.GB20105@zn.tnic>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513073254.GB16774@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_005014_525128_63B7659C 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, hpa@zytor.com,
 j-nomura@ce.jp.nec.com, tglx@linutronix.de, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
> This is a critical bug which breaks memory hotplug,

Please concentrate and stop the blabla:

36f0c423552d ("x86/boot: Disable RSDP parsing temporarily")

already explains what the deal is. This code was *purposefully* disabled
because we ran out of time and it broke a couple of machines. Don't make
me repeat all that - you were on CC on *all* threads and messages!

So we're going to try it again this cycle and if there's no fallout, it
will go upstream. If not, it will have to be fixed. The usual thing.

And I don't care if Kairui's patch fixes this one problem - judging by
the fragility of this whole thing, it should be hammered on one more
cycle on as many boxes as possible to make sure there's no other SNAFUs.

So go test it on more machines instead. I've pushed it here:

https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/log/?h=next-merge-window

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
