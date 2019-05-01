Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0E11040B
	for <lists+kexec@lfdr.de>; Wed,  1 May 2019 04:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8C4z3XbKUxx8c5i0yGIDG9ycja/yKPyjTm3jXUCVHU=; b=UDL4lnq9E86aMI
	Z1u20qIPy4zqcVf5AWyrNnDLionNeFN7P/OzeErYsVQhfew586pnXtfLOZhvwgNR0Z/IbB8URMiVM
	zJ0adVDNAGgj+gBLhEGQDf6eYl73Q6ynwJESuB38s/Z+GNQ9kxAmUrvJODll0/JcdPStf7T6BeRPa
	j+gxtJSn2CUgshbbWE0A/4cgRltmq/RnTyOFihA8H9k2XO6p7+efkW55PixvcRHYcpXcCkXGOB+LW
	PIdEadgQKn0GS0dj7vCKp/r5lkeQhvoCSrQXO1rsQqxYcAtsHbL+SBpJwrzfkQSOG5ff7r81NWDw9
	JbUPoi9p+AUpszq/8uLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLfPl-0002Dc-5q; Wed, 01 May 2019 02:56:09 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLfPh-0002D7-IK
 for kexec@lists.infradead.org; Wed, 01 May 2019 02:56:07 +0000
Received: by mail-qk1-x741.google.com with SMTP id p19so9540625qkm.10
 for <kexec@lists.infradead.org>; Tue, 30 Apr 2019 19:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=koconnor.net; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LGvoQUpNmw9qp3dd1OFBjFizWZ57BKqaS2ny30Zxcrk=;
 b=Ppi5aFZ8tanOeYPAXZtWiPt3dNNeAKFuZuuCC+VgnzOqmU8jeZDzl6qfWsz1vjvCBR
 puad2t9xrPBqMUOR3U56315ygI1ojdC1LyxmPaqbbwN1Z0B3X5b69XmO1Kn6ycdPTHJH
 3A8IcjC22YrYsPiyAE4dQliBErp5UWZIN/dXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LGvoQUpNmw9qp3dd1OFBjFizWZ57BKqaS2ny30Zxcrk=;
 b=OfGMQ9q17xuiZXfdG1UYxJ+kASdtUHLpJE8lRZtUdRXH9PQumiVAta77M15CWGFwHW
 KjZZgHqQ/gCxjCAdUY+OzY1nhAmq91Uj+ZAHR/qwY5Bx/WEpr3vVcE12OOMaGefVyXdh
 QE7hBRzDQVQ91uPzPh6aUyJ//ZhJfj9eiK3OBsDPNZmvDDcvOiK+1goxcXH1+39q36Qh
 mGK3lSIaUEvBAIK7ZVBS7ZKAR2ZhGeDZM2zd1r9h8J3z60VPQj/UwqRrSpf8DkGD20sF
 LegVuH/k7S7MixB8z5dTx6OVw7P0/uRx0/QTnrerMD18nFa7SBh5JK1viu9mJYhWmJHz
 ydxg==
X-Gm-Message-State: APjAAAULSHQTkThWf717Q4Qmgx95lCR+5HM/Zz+kSk9e00ENULX0x/ud
 IHRYbeb0QpPyEGfq+pvu9I/xnQ==
X-Google-Smtp-Source: APXvYqyxDG0nocW+Zdu3mYCQtB3xuTJWcrG/a7z1s9ivdyjFlhchDrhUvnYhBT8O5Mc87tgXJzxWRQ==
X-Received: by 2002:ae9:e109:: with SMTP id g9mr51774679qkm.251.1556679363197; 
 Tue, 30 Apr 2019 19:56:03 -0700 (PDT)
Received: from localhost ([64.9.249.163])
 by smtp.gmail.com with ESMTPSA id e4sm20442010qtb.61.2019.04.30.19.56.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 19:56:01 -0700 (PDT)
Date: Tue, 30 Apr 2019 22:56:01 -0400
From: Kevin O'Connor <kevin@koconnor.net>
To: David Woodhouse <dwmw2@infradead.org>
Subject: Re: [SeaBIOS] Real mode kexec failure with non-IDE disk
Message-ID: <20190501025601.GA5342@morn.lan>
References: <e5872703412f9a56c10df52d9793ca2a6401d7f0.camel@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5872703412f9a56c10df52d9793ca2a6401d7f0.camel@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_195605_612357_236331FF 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: seabios@seabios.org, kexec <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 12:05:33AM +0300, David Woodhouse wrote:
> When I kexec either Xen or Linux in real mode, from either Xen or
> Linux, it fails.
> 
> The last thing I see looks like SeaBIOS trying to use SMM for call32:
> 
> ----------------
> IN: 
> 0x00000000000f70ec:  mov    %eax,%esi
> 0x00000000000f70ef:  mov    $0xb5,%eax
> 0x00000000000f70f5:  mov    $0x1234,%ecx
> 0x00000000000f70fb:  mov    $0xef3dc,%ebx
> 0x00000000000f7101:  out    %al,$0xb2
> 0x00000000000f7103:  pause  
> 
> ----------------
> IN: 
> 0x00000000000ef3db:  hlt    
> 
> This happens when the real mode boot code calls INT 13h to read from
> the disk. It seems to happen with virtio and SATA disks.
> 
> This is with the Ubuntu-packaged 1.10.2-1ubuntu1 SeaBIOS. Switching to
> an IDE disk, or booting with 'edd=skipmbr', makes Xen work and Linux
> get a little further before it dies anyway.

Hi David,

That call trace certainly looks odd.  The SeaBIOS debugging info would
help - try compiling SeaBIOS with debug level 8 and grab the log (as
described at: https://www.seabios.org/Debugging#Diagnostic_information
).

-Kevin

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
