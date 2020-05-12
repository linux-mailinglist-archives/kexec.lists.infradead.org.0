Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4A71CFD56
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 20:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmBVv6pzsngz2n1bNTSCyQqtMzSAqEDlzxjsDF08FmQ=; b=fS53LR2bczZWqE
	3SooSjBrJl/u/hlPRcRFB+Aktypk8YmbSaKJvdEXZKVKBU+vUXhyuqOeA83O9tH0mOTeOxOq1d519
	kwteVc6Acoe5lqktZeVWJP/+B6teX4q5OCdIYPMW8egVm/zXG4RInClO5KTAyLjO6mbUqdX/fe/Bf
	3jgjAPYQd6fb8lrkD3RUptMpuYEasyRIPlP/tf8Bck1h1YXrvzK+bgF3Vy1f9FVuLHs4nKMxvmw/U
	mjIdmPkgkVHhcCsAwzns4DfOcq3F2cEtpPNDdLmuMnCRB5FL2bs8JFeRH7Qoj7B5264Gt70Ldopar
	9nlgyinemV2GrBcXbe/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZiE-00030f-Ne; Tue, 12 May 2020 18:33:06 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZiB-000301-M8
 for kexec@lists.infradead.org; Tue, 12 May 2020 18:33:04 +0000
Received: from mail-ed1-f71.google.com ([209.85.208.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <guilherme.piccoli@canonical.com>) id 1jYZiA-0007Wt-6E
 for kexec@lists.infradead.org; Tue, 12 May 2020 18:33:02 +0000
Received: by mail-ed1-f71.google.com with SMTP id p12so5637371edi.15
 for <kexec@lists.infradead.org>; Tue, 12 May 2020 11:33:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B7hdt2MvYO5ojFyanzLiTjqqkA3zriFapEVBRwfZ7F4=;
 b=KRvmEipqz9w44u9VCFDfTZUlPwPWdAhc0rnRatRd/BguztaD3gabIRKLOrkhmopR9A
 rm+6dPUuf+ceJz7+gGk3/HduI731zu6xk2rAPPd4YaIcsg0TIWkYYkYIiHk+8VtrXMjQ
 UGMKFyV70U9etB4NZo0MKiC+dgg4RYXADYS8YUAEDCK8RmpAlCwowfu3sYmPrVMjSTAY
 VtD5Ta2e15Sj+Tp10V//gthVl1T3vNzy3BMs0oJGmI0dyiVzz6usxiQtoDXw5MSfdRtt
 8sHJ9DXD4xs7zGf3+iENZOtWa2XmUtFjrb++j2VWiPMjST1I7i+DWjYd3kx12k/ywtl7
 32tw==
X-Gm-Message-State: AGi0Pubqt/dzvBWTWt6b2MwnKE6zx3Mq2/HlpBKx6JS8F87AmU2Tp98H
 G0v7wa3IWEsXHDbDD62EYLS0L7d7kDimzJd8+NPlpewwJJ3sH3keUewtfSBEUn2i7LbA+vAtqXy
 gJBVSL5OkxAYU8G8Wt91vYafYMhJvNngNHilDoxmfe6MhN06DMOWWLw==
X-Received: by 2002:a50:8b42:: with SMTP id l60mr18514877edl.55.1589308381564; 
 Tue, 12 May 2020 11:33:01 -0700 (PDT)
X-Google-Smtp-Source: APiQypJMZbrEW4+eLHHdGPT8z3MnKTn3/swiln2goRmje/Ok5IjUJ5FYDmC6lKCCqPawHep3RLFhlrOyBFNwK/YRelI=
X-Received: by 2002:a50:8b42:: with SMTP id l60mr18514866edl.55.1589308381389; 
 Tue, 12 May 2020 11:33:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200512172546.GL31850@zorba>
 <CAHD1Q_wJGA+b9hgLhUUt2fBK8aEOchis9EDW4W8JVQ1EreFwqA@mail.gmail.com>
 <20200512182749.GP31850@zorba>
In-Reply-To: <20200512182749.GP31850@zorba>
From: Guilherme Piccoli <gpiccoli@canonical.com>
Date: Tue, 12 May 2020 15:32:25 -0300
Message-ID: <CAHD1Q_zghTM0ahkc-MLaRktC356YrQX_yg6bGn9pFXuxY3enrA@mail.gmail.com>
Subject: Re: [REQUEST] makedumpfile: stream compress flat ELF format with libz
To: "Daniel Walker (danielwa)" <danielwa@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_113303_857352_AEA5BC91 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Sure, I understood that. I'm curious though about the memory
consumption of the compression operation, or put in other words: do we
need to increase crashkernel reserved memory if we plan to use your
gzip approach?
It's good to be sure about this, to evaluate the trade-off of core
file size vs. necessary reserved memory.

Thanks!

On Tue, May 12, 2020 at 3:27 PM Daniel Walker (danielwa)
<danielwa@cisco.com> wrote:
>
> On Tue, May 12, 2020 at 03:14:49PM -0300, Guilherme Piccoli wrote:
> > It's a quite interesting feature Daniel, thanks for the effort!
> > I'm curious about memory usage - did you somehow measure the
> > consumption with your patches vs. the regular kdump compression?
>
> It's not really a memory consumption issue, it's a core size issue. The core
> size is much smaller when compressed with gzip. I measured the core size with
> different formats and gzip compressed.
>
> Daniel

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
