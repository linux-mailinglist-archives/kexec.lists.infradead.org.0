Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCE8107ED6
	for <lists+kexec@lfdr.de>; Sat, 23 Nov 2019 15:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2xaC6vfa1heKe6sw2JPaH2uW1+0gZPQFw7bRjSS0r3s=; b=MnhIP1ifLjoDyS6ABlU0OUPEZ
	SRnVE9asu5+8eU1VyZsyfMQ0QBDMmAO0c+22vjzPa+DHRmRW2wZGL7YkONJZl2hW97hY9tBst4lZI
	Ayxpo/41HJ7LGVnszA93fECJ1wVgAWpJQMXek4W7UI8ayd6jF0IUkmnVjm767iwpmwNQE2af0N9yw
	xEpZin8n2C/AtOh40Ditxl3LJUTwkqEyYmB9XQGsKluGWf2G7w5z2X+gNfkjRYBMZUJl9SqZAr6Ce
	DUQNfIXnmHUN+3K7/hTcyhrpDcv77cnP09tXARa5SmQrd0kGazJHBVdEwfE1vsUbYpO+vtaHys9cB
	hXO9Ki8RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWQ9-0005tc-P8; Sat, 23 Nov 2019 14:29:57 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWQ5-0005t1-JG
 for kexec@lists.infradead.org; Sat, 23 Nov 2019 14:29:55 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xANEOPeb093578
 for <kexec@lists.infradead.org>; Sat, 23 Nov 2019 14:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=uro8HKs2ZawgXl3Ajn2ERveeExguB1Wnuw7CDwxA1sc=;
 b=gwhYi17qHdt3vl9jGHA/rqtq5AoeZNTAlT4J6BTMoMaRKto1oTEcRCZ7sWHEnM+GSiIF
 OvZ3bvMz6wMRP8wW1pswYYKrfx5j00aFiExl9uWts4T3isZfBneBMMGUhupQ/1r8x70o
 4CcnDq2dRkOkZfKG1O7psKaiQvYXVva8wMoHbXhd4rANvsLnLpretanWC8pKrXXpeVFh
 7vsnPNwxWojpxyEkhOFcDad/B4YQsWlor4DELJXs7BRPv8ytEv1AlWDiqBGqDIX0GLKT
 bo3MjE6DKTrDcTm3n9GjbHkoJpT3R8U9bjPKEgs/lSEaP0GLnvnOIiX6F/YKIw9ch42F ug== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2wewdqs2j6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Sat, 23 Nov 2019 14:29:43 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xANETJYn021581
 for <kexec@lists.infradead.org>; Sat, 23 Nov 2019 14:29:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2wesvyfj7a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Sat, 23 Nov 2019 14:29:43 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xANETdXQ024676
 for <kexec@lists.infradead.org>; Sat, 23 Nov 2019 14:29:42 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 23 Nov 2019 06:29:39 -0800
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
To: kexec@lists.infradead.org
References: <mailman.13491.1574446920.2486.kexec@lists.infradead.org>
 <483111234.14383042.1574448460262.JavaMail.zimbra@redhat.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <afbba516-250b-3325-d453-0c37bc63d1b6@Oracle.com>
Date: Sat, 23 Nov 2019 08:29:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <483111234.14383042.1574448460262.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9449
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=667
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911230122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9449
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=712 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911230122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062953_723922_C1C7F1C5 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 11/22/19 12:47 PM, Dave Anderson wrote:
> 
> 
> ----- Original Message -----
>>
>> Hi Bhupesh,
>>
>> I recall seeing a reference to modification are needed for the crash CLI also
>> to support 5.4.0-rc with your kernel patches cited here.
>>   
>> Where would I find that at ?  I don?t see crash on Giblab.
> 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_crash-2Dutility_crash&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=Idg6a1AITiQdn_Ne3jgviBQAPUgdP7PzV00Z47gRHe8&s=g2_ZOSi3nOdUQgU-MvV3nUWcDbnnanKhzPGPUKnFm-A&e=
> 
>>


Hi David ,

Thank you. I verified that works with Bhupesh's makedumpfile and 5.4.0 
kernel patches.



-- 
Thank You,
John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
