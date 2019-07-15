Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30EE68798
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 13:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=41gPe2yfZsWEtBYTLOcqlThle/ZiRydrZHP6JLJxWBA=; b=TMF
	MvXEKSciXlbjJaL6n9hoqsnQNCcfktsnsWRgDwoZ58V7v5fZaWP2vjQtUrfL1UQuT8pkAdDN300tJ
	i+BoXYgIwh5hkCPVWw4EGa2eGc6oucSlYANZsoXUI+WTX0CYN6QWRoSk/M9s750el1MjsEda/PIEy
	ipsquIWp67Q7NfJyjUqzuGb0Bv9vG39fI+/ymZmao8hocx4ubEEdEbHnxTRiKXEl8xvDGjdFNPGZA
	Rltd7BERiUh9vpLnmfYRStnAjY+oif60jOKFHGvJjDhJwNFrNi6Igh19zwqG0seybQ9zQnYtpOGPo
	iKYmA++YA4xqt+R3vf+NoDxQCOtfBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmyja-0007hH-FK; Mon, 15 Jul 2019 11:01:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmyjW-0007gg-08
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 11:01:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so7543419pgm.3
 for <kexec@lists.infradead.org>; Mon, 15 Jul 2019 04:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=at1U0zLzNGQlxAxn9clrRSHSPpGB2zlKGmciYViXmzQ=;
 b=Z9oXVPFMLu2uHaJA1Qjp0ttNObBYRa75H5GL/4ONtRz8tfullG/Skqfnj/qhqsn2XF
 4XYx/OUlIT1ITxiKwJ0NLlTn9aJ/3SM0o29EuBJakQa3t/QZ+ieI2JVD9pPeovy+ik6Z
 /hr3CEZ03JP+w2RMUiBpSqYxHvp2SIpeTkf+JqgSc2mA6I9ApZCviQ5R85k2HYy05AtN
 LAYbUtTxdcTOOZET0hphoyT/XLVSCesl9pCLqOv9NR3Es2mk17JKwyWKgHFnjTWgxbat
 dkO9QV6ePL/iu9cuUS+qRtoqQHI7F1CKVej3u1bTFntcgm8BMe7VPywWSQgOrk+Hd1la
 Wy5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=at1U0zLzNGQlxAxn9clrRSHSPpGB2zlKGmciYViXmzQ=;
 b=EjkzfMEZa3+9Yh8y+lK1puh/dtk6YRuu5UhCl1XjuOUUdotRN7dRXYt3BaHEJvPreK
 KIJ3iz9hyXs5q7ArEGTyIqlVUwP04xN/EgJBiOeW7GUw9oFYowxNbPmFmqN8D/DP5XP9
 N5LpvUhcYZXBY97RGhd9BMng/g0AJdRKFIo1fCT3hiTf3IPytZA4Dx4UvwXxkbDeAsbe
 l4us39Q4w/kr7zJAf8BqXhe1NEQ4YZNthN8Z0hVak+f6EcoxWjrxDlDElpJrK4JJAbXl
 hkQ2TZWkUnaUvvPniR1ey5Q2F+xgx16wSAZI38XxEf+//o+JIhZdDrkJAzXaOORsuZ3W
 hzqQ==
X-Gm-Message-State: APjAAAWKQJoYZRum9+V5zxr3qvW6kjoqO4lFsL3cmaYz4L4TUbX+1zYq
 aThplatt4gcXMg/6a1aWnLq8KE3GH+z++MufLMk=
X-Google-Smtp-Source: APXvYqzRiqEMdP2oCsG+oCHXb2GHUr0XEf1B7DVR+E89dsJE9BnV66dSLlkj/q/fQwMBNc78Lr9VZjkNFa6Zuiwz9HU=
X-Received: by 2002:a63:ad07:: with SMTP id g7mr24465546pgf.405.1563188483879; 
 Mon, 15 Jul 2019 04:01:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:b78d:0:0:0:0 with HTTP; Mon, 15 Jul 2019 04:01:23
 -0700 (PDT)
From: Donald Douglas <ddouglasng@gmail.com>
Date: Mon, 15 Jul 2019 04:01:23 -0700
Message-ID: <CALVR28FUKvdu9Zx=69na4BTSWx-HhVeo+1o3JMScYNkFchaezw@mail.gmail.com>
Subject: Kindly Respond
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_040126_277835_DCFF8848 
X-CRM114-Status: UNSURE (  -0.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ddouglasng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 HK_SCAM                No description available.
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello,
I am Barr Fredrick Mbogo a business consultant i have a lucrative
business to discuss with you from the Eastern part of Africa Uganda to
be precise aimed at agreed percentage upon your acceptance of my hand
in business and friendship. Kindly respond to me if you are interested
to partner with me for an update. Very important.

Yours Sincerely,
Donald Douglas,
For,
Barr Frederick Mbogo
Legal Consultant.
Reply to: barrfredmbogo@consultant.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
