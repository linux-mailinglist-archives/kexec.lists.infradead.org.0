Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F163DE135B
	for <lists+kexec@lfdr.de>; Wed, 23 Oct 2019 09:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNsRie0GIzXexLvGuMaCT/LoY3QioM7/5YPbloAgPRo=; b=BVUGdZTu9s6fXR
	IwRHnOhz3clMaHlM+x2Pyt8N/F5ool7rXr/LAl3C3epqV9pITNYQkFAK9d1hEVKE1hl+4YpE3dz5P
	q5V/pWwuk2jNgtFmLhKykHP6feSC+Sb7F25sQlrhApkfd30YgSIASX+hRMMtYwOsnNL95HhDMZAEh
	5PSYY7z5ImjCojg5yJbCa5XUhUKca6U3uQTfDhGSzAb54uVRyw2+D/gykIp0a65viqGCfTehl9Maa
	+dpYYoPoV+F93LVwBXW/HhYE41cbLZrn3QJg84pFIgaYChVgNs3FRYb77H0Av6mX/HcDMazPSnASB
	RqtLLcnS+XIG8O6zzh6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBLM-0006x9-Hx; Wed, 23 Oct 2019 07:46:08 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBLJ-0006wG-4x
 for kexec@lists.infradead.org; Wed, 23 Oct 2019 07:46:06 +0000
Received: from zn.tnic (p200300EC2F11E8005961F1FA34C94581.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f11:e800:5961:f1fa:34c9:4581])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B69C01EC0C97;
 Wed, 23 Oct 2019 09:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1571816763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=33x7ICr9fxs1J4Vu9qmTnOIG8Qr9Paia3taGadlBeds=;
 b=sF90pXPOJvEOtqF8Zq0yKWXrr3MeSgzvDQ0HYHx+rjLoH2+4RmK73uq/jUqNeB7aEDtm8x
 IX9nXFmsaljQqV1fzFtTxdjFv0qD5Kd+xBedwsBx7DzFAkf8jpWYIp6dg6Fr60NnWP4NUg
 Lo3n0JOPGdzv4oLF6joYAx1XUFfSmyc=
Date: Wed, 23 Oct 2019 09:46:02 +0200
From: Borislav Petkov <bp@alien8.de>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
Message-ID: <20191023074602.GB16060@zn.tnic>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-2-lijiang@redhat.com>
 <20191022083015.GB31700@zn.tnic>
 <75648e8d-4ef7-0537-618e-e4a57f0d3b9b@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75648e8d-4ef7-0537-618e-e4a57f0d3b9b@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_004605_487936_8D2EC225 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 01:35:09PM +0800, lijiang wrote:
> Would you mind if i improve this patch as follow? Thanks.

Yap, looks good to me.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
