Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7092B43418
	for <lists+kexec@lfdr.de>; Thu, 13 Jun 2019 10:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hONRVZ867h+TJ4n2EsZB1YSc+Yx4Jh1torQwS1ogE88=; b=Ya5HNfKSD0rfyb
	7NR7EGAQj/xYMkqCfGONboaLvLZe8FKWicR2SKF4Suu4M3iyvb/GQqEDhgmBF49IWZGrunh2kJJfq
	LUSkt+1aPsR1ZOmerUJPkHtrthOucyxM++dNd9SljS4/yU07SW9gtflUJWR81XWmGhuF9MLCLj2CL
	Mnvkp8H1tuHxzCdjb8Kf3Q9quLfn/rR0nWterQQAm2tx7yxJgGDk1saf6UHTx0aDVscMudEubQJ/W
	XhheQmXhUqdOMiUK0rdGArcNt4IaE4uKfJK2TuWZHzINCGh/8EfDkdOL66aipR+03XpOr45phoHiI
	X87Pua0DhGprDxZzaIlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbL4P-000287-8t; Thu, 13 Jun 2019 08:26:53 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbL4J-00027V-LI
 for kexec@lists.infradead.org; Thu, 13 Jun 2019 08:26:49 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 73FF830860C0;
 Thu, 13 Jun 2019 08:26:39 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-87.pek2.redhat.com
 [10.72.12.87])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E3E960FB1;
 Thu, 13 Jun 2019 08:26:31 +0000 (UTC)
Date: Thu, 13 Jun 2019 16:26:27 +0800
From: Dave Young <dyoung@redhat.com>
To: Mimi Zohar <zohar@linux.ibm.com>
Subject: Re: [PATCH V8 3/3] Call ima_kexec_cmdline to measure the cmdline args
Message-ID: <20190613082627.GA30288@dhcp-128-65.nay.redhat.com>
References: <20190612221549.28399-1-prsriva02@gmail.com>
 <20190612221549.28399-4-prsriva02@gmail.com>
 <1560378703.4578.91.camel@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560378703.4578.91.camel@linux.ibm.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 13 Jun 2019 08:26:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_012647_734233_81C00B33 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kexec <kexec@lists.infradead.org>, Prakhar Srivastava <prsriva02@gmail.com>,
 roberto.sassu@huawei.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-integrity@vger.kernel.org,
 vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/12/19 at 06:31pm, Mimi Zohar wrote:
> [Cc: kexec mailing list]
> 
> Hi Eric, Dave,
> 
> On Wed, 2019-06-12 at 15:15 -0700, Prakhar Srivastava wrote:
> > During soft reboot(kexec_file_load) boot cmdline args
> > are not measured.Thus the new kernel on load boots with
> > an assumption of cold reboot.
> > 
> > This patch makes a call to the ima hook ima_kexec_cmdline,
> > added in "Define a new IMA hook to measure the boot command
> > line arguments"
> > to measure the boot cmdline args into the ima log.
> > 
> > - call ima_kexec_cmdline from kexec_file_load.
> > - move the call ima_add_kexec_buffer after the cmdline
> > args have been measured.
> > 
> > Signed-off-by: Prakhar Srivastava <prsriva02@gmail.com>
> Cc: Eric W. Biederman <ebiederm@xmission.com>
> Cc: Dave Young <dyoung@redhat.com>
> 
> Any chance we could get some Acks?

The ima_* is blackbox functions to me, looks like this patch is trying
to measure kexec cmdline buffer and save in some ima logs and then add all the
measure results including those for kernel/initrd to a kexec_buf and pass to 2nd
kernel.

It should be good and only take effect when IMA enabled. If all the
assumptions are right:

Acked-by: Dave Young <dyoung@redhat.com>
> 
> thanks,
> 
> Mimi
> 
> > ---
> >  kernel/kexec_file.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> > index 072b6ee55e3f..b0c724e5d86c 100644
> > --- a/kernel/kexec_file.c
> > +++ b/kernel/kexec_file.c
> > @@ -198,9 +198,6 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> >  		return ret;
> >  	image->kernel_buf_len = size;
> >  
> > -	/* IMA needs to pass the measurement list to the next kernel. */
> > -	ima_add_kexec_buffer(image);
> > -
> >  	/* Call arch image probe handlers */
> >  	ret = arch_kexec_kernel_image_probe(image, image->kernel_buf,
> >  					    image->kernel_buf_len);
> > @@ -241,8 +238,14 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> >  			ret = -EINVAL;
> >  			goto out;
> >  		}
> > +
> > +		ima_kexec_cmdline(image->cmdline_buf,
> > +				  image->cmdline_buf_len - 1);
> >  	}
> >  
> > +	/* IMA needs to pass the measurement list to the next kernel. */
> > +	ima_add_kexec_buffer(image);
> > +
> >  	/* Call arch image load handlers */
> >  	ldata = arch_kexec_kernel_image_load(image);
> >  
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
