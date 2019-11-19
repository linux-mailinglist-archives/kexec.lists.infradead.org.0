Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3920102808
	for <lists+kexec@lfdr.de>; Tue, 19 Nov 2019 16:26:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLDrGT3cIToCJu0WuRYFc8NN4IdCUR3DjbGI+jMRSME=; b=Ql4YEws3rO2ew4
	EJNL2NOew6X53wwaOEAdHg1gf0ORlPVIvgnHBcCjYJ9R93icRnTj6iqulQRo9aGQQW76macuMSeFR
	w57WHXsx4LNI1TQlgNULZGJS+Ois5nUha7sLA38Cu6UKXxgB5063wD6Lb52iP1pP0mOEFGkAVPbsT
	ZRISNAL/ihVpNdGvDqSmp764aZUl4bBZIRxH4Efhj/kE+lzjVlWaW0uxLJPJ/ywJz+icmvoBq0us8
	LhMRcSVXzTSyk3U7PoRpD6XW++41chFKSKDIzoiIL4gQDaDI3j2Mt2OW2lttF+eu0TjdmxZbjgsO0
	ujMTHqIuVrS1pOiyjrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5Of-0000BR-Ei; Tue, 19 Nov 2019 15:26:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5Ob-00005Z-To
 for kexec@lists.infradead.org; Tue, 19 Nov 2019 15:26:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574177183;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IC1kVOBJsM1f5kGh8NDSORmvnjCPKic4LVUYIm5TGdk=;
 b=hqPsuJhSut3e/phwl3v+kqPNeyt9gcdV+ui418Vmr5FnZdAxoiWakbYz6+xtubzdcSyrdI
 IxsiHhuPmq+aNPrGGae0N6gr+boQLp1fc7FZk+GDU8hMG2aX0k3S6rpCtmkOpazBUue82A
 OZpTIy77yKOsVgpyKY0lMRxJWaNggIo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-jK7ZQgPkNki7_ZtK2n9jIQ-1; Tue, 19 Nov 2019 10:24:24 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D6AF18B6455;
 Tue, 19 Nov 2019 15:24:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FA5C60850;
 Tue, 19 Nov 2019 15:24:23 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF6A74BB65;
 Tue, 19 Nov 2019 15:24:22 +0000 (UTC)
Date: Tue, 19 Nov 2019 10:24:22 -0500 (EST)
From: Dave Anderson <anderson@redhat.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <1049422055.13569004.1574177062892.JavaMail.zimbra@redhat.com>
In-Reply-To: <1574169634-10329-1-git-send-email-bhsharma@redhat.com>
References: <1574169634-10329-1-git-send-email-bhsharma@redhat.com>
Subject: Re: [PATCH] crash/arm64: Determine vabits_actual value from
 'TCR_EL1.T1SZ' value in vmcoreinfo
MIME-Version: 1.0
X-Originating-IP: [10.18.17.5, 10.4.195.13]
Thread-Topic: crash/arm64: Determine vabits_actual value from 'TCR_EL1.T1SZ'
 value in vmcoreinfo
Thread-Index: gH/u0H+mx99zY4iuKJsOdbo830TcMg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: jK7ZQgPkNki7_ZtK2n9jIQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_072626_041983_4751C6DE 
X-CRM114-Status: GOOD (  15.49  )
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 bhupesh linux <bhupesh.linux@gmail.com>, kexec@lists.infradead.org,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>, crash-utility@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


----- Original Message -----
> I have recently sent a kernel patch upstream to add 'TCR_EL1.T1SZ' to
> vmcoreinfo for arm64 (see [0]), instead of VA_BITS_ACTUAL.
> 
> 'crash' can read the 'TCR_EL1.T1SZ' value from vmcoreinfo
> [which indicates the size offset of the memory region addressed by
> TTBR1_EL1] and hence can be used for determining the vabits_actual
> value.

Thanks Bhupesh -- your patch has been queued for crash-7.2.8:

  https://github.com/crash-utility/crash/commit/bfd9a651f9426d86250295ac875d7e33d8de2a97

Dave


> 
> [0].http://lists.infradead.org/pipermail/kexec/2019-November/023962.html
> 
> Cc: Dave Anderson <anderson@redhat.com>
> Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Cc: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
> Cc: crash-utility@redhat.com
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> ---
>  arm64.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/arm64.c b/arm64.c
> index af7147d24e20..083491331985 100644
> --- a/arm64.c
> +++ b/arm64.c
> @@ -3856,8 +3856,17 @@ arm64_calc_VA_BITS(void)
>  		} else if (ACTIVE())
>  			error(FATAL, "cannot determine VA_BITS_ACTUAL: please use
>  			/proc/kcore\n");
>  		else {
> -			if ((string = pc->read_vmcoreinfo("NUMBER(VA_BITS_ACTUAL)"))) {
> -				value = atol(string);
> +			if ((string = pc->read_vmcoreinfo("NUMBER(tcr_el1_t1sz)"))) {
> +				/* See ARMv8 ARM for the description of
> +				 * TCR_EL1.T1SZ and how it can be used
> +				 * to calculate the vabits_actual
> +				 * supported by underlying kernel.
> +				 *
> +				 * Basically:
> +				 * vabits_actual = 64 - T1SZ;
> +				 */
> +				value = 64 - strtoll(string, NULL, 0);
> +				fprintf(fp,  "vmcoreinfo : vabits_actual: %ld\n", value);
>  				free(string);
>  				machdep->machspec->VA_BITS_ACTUAL = value;
>  				machdep->machspec->VA_BITS = value;
> --
> 2.7.4
> 
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
